# -*- coding: utf-8 -*-
# vi:si:et:sw=4:sts=4:ts=4

##
## Copyright (C) 2008 Async Open Source <http://www.async.com.br>
## All rights reserved
##
## This program is free software; you can redistribute it and/or modify
## it under the terms of the GNU Lesser General Public License as published by
## the Free Software Foundation; either version 2 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU Lesser General Public License for more details.
##
## You should have received a copy of the GNU Lesser General Public License
## along with this program; if not, write to the Free Software
## Foundation, Inc., or visit: http://www.gnu.org/.
##
## Author(s):   George Kussumoto        <george@async.com.br>
##
##
""" Dialogs for product adjustment """

from decimal import Decimal

import gtk

from kiwi.datatypes import ValidationError
from kiwi.ui.objectlist import Column

from stoqlib.database.runtime import new_transaction, finish_transaction
from stoqlib.domain.fiscal import CfopData
from stoqlib.domain.interfaces import ICompany
from stoqlib.domain.inventory import Inventory, InventoryItem
from stoqlib.gui.base.dialogs import run_dialog
from stoqlib.gui.editors.baseeditor import BaseEditor
from stoqlib.gui.editors.fiscaleditor import CfopEditor
from stoqlib.lib.message import warning
from stoqlib.lib.translation import stoqlib_gettext

_ = stoqlib_gettext


class ProductsAdjustmentDialog(BaseEditor):
    title = _(u"Products Adjustment")
    gladefile = "ProductsAdjustment"
    model_type = Inventory
    size = (750, 450)

    def __init__(self, model, conn):
        BaseEditor.__init__(self, conn, model)
        self._setup_widgets()
        self._update_widgets()

    def _setup_widgets(self):
        self.register_validate_function(self._validate)
        self.main_dialog.ok_button.set_label(u'_Finish Inventory')
        self.main_dialog.cancel_button.set_label(gtk.STOCK_CLOSE)

        company = ICompany(self.model.branch, None)
        if company is not None:
            self.branch_lbl.set_text(company.fancy_name)
            self.state_registry_lbl.set_text(company.state_registry)
            self.cnpj_lbl.set_text(company.cnpj)

        self.open_date.set_text(self.model.open_date.strftime("%x"))

        self.inventory_items.set_columns(self._get_columns())
        items = self.model.get_items_for_adjustment()
        self.inventory_items.add_list(items)

        if self.model.invoice_number:
            self.invoice_number.set_sensitive(False)

    def _update_widgets(self):
        if not hasattr(self, 'main_dialog'):
            return
        if not self._is_valid_invoice_number():
            self.adjust_button.set_sensitive(False)
        else:
            has_selected = self.inventory_items.get_selected() is not None
            self.adjust_button.set_sensitive(has_selected)
        self.refresh_ok(not self._has_rows())

    def _is_valid_invoice_number(self):
        invoice_number = self.invoice_number.read()
        if invoice_number <= 0 or invoice_number > 999999:
            return False

        return True

    def _get_columns(self):
        return [Column('code', title=_(u"Code"), data_type=str,
                        sorted=True),
                Column('description', title=_(u"Description"),
                        data_type=str, expand=True),
                Column('unit_description', title=_(u"Unit"),
                        data_type=str),
                Column('fiscal_description', title=_(u"Fiscal Class"),
                        data_type=str),
                Column('recorded_quantity', title=_(u"Recorded Quantity"),
                        data_type=Decimal),
                Column('actual_quantity', title=_(u"Actual Quantity"),
                        data_type=Decimal)]

    def _has_rows(self):
        return len(self.inventory_items)

    def _validate(self, value=None):
        return not self._has_rows()

    def _run_adjustment_dialog(self, inventory_item):
        retval = run_dialog(AdjustmentDialog, self, self.conn,
                            inventory_item, self.model.invoice_number)
        if not retval:
            return

        # The adjustment can be done only once
        self.inventory_items.remove(inventory_item)

        # After the first adjustment, the invoice number can not change
        if self.invoice_number.get_property('sensitive'):
            self.invoice_number.set_sensitive(False)
            self.conn.commit()

    #
    # BaseEditor
    #

    def setup_proxies(self):
        self.proxy = self.add_proxy(self.model, ['invoice_number'])

    def validate_confirm(self):
        return self._validate()

    def on_confirm(self):
        self.model.close()
        return self.model

    #
    # Kiwi Callbacks
    #

    def on_adjust_button__clicked(self, button):
        selected = self.inventory_items.get_selected()
        self._run_adjustment_dialog(selected)

    def on_inventory_items__row_activated(self, objectlist, item):
        if self._is_valid_invoice_number():
            self._run_adjustment_dialog(item)

    def on_inventory_items__selection_changed(self, objectlist, item):
        self._update_widgets()

    def on_invoice_number__validate(self, widget, value):
        if not self._is_valid_invoice_number():
            return ValidationError(_(u'The invoice number number must be '
                                     'between 1 and 999999'))

    def on_invoice_number__validation_changed(self, widget, value):
        self._update_widgets()


class AdjustmentDialog(BaseEditor):
    title = _(u"Product Adjustment")
    hide_footer = False
    size = (500, 300)
    model_type = InventoryItem
    gladefile = "ProductAdjustmentDialog"
    proxy_widgets = ('adjustment_quantity',
                     'cfop_combo',
                     'description',
                     'reason')

    def __init__(self, conn, model, invoice_number):
        BaseEditor.__init__(self, conn, model)
        self._invoice_number = invoice_number

    def _setup_combo(self):
        cfops = [(cfop.get_description(), cfop) for cfop in
                                CfopData.select(connection=self.conn)]
        self.cfop_combo.prefill(cfops)

    #
    # BaseEditor
    #

    def setup_proxies(self):
        self._setup_combo()
        self.add_proxy(self.model, self.proxy_widgets)

    def validate_confirm(self):
        can_confirm = True
        if not self.model.cfop_data:
            warning(_(u"You can not adjust a product without a cfop!"))
            can_confirm = False
        elif not self.model.reason:
            warning(_(u"You can not adjust a product without a reason!"))
            can_confirm = False
        return can_confirm

    def on_confirm(self):
        trans = new_transaction()
        inventory_item = trans.get(self.model)
        inventory_item.adjust(self._invoice_number)
        finish_transaction(trans, True)

        return inventory_item

    #
    # Kiwi Callbacks
    #

    def on_new_cfop_button__clicked(self, button):
        new_cfop = run_dialog(CfopEditor, self, self.conn, None)
        if new_cfop:
            self.cfop_combo.append_item(new_cfop.get_description(), new_cfop)
            self.cfop_combo.select(new_cfop)
