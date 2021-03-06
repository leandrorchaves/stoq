# -*- coding: utf-8 -*-
# vi:si:et:sw=4:sts=4:ts=4

##
## Copyright (C) 2013 Async Open Source <http://www.async.com.br>
## All rights reserved
##
## This program is free software; you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 2 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program; if not, write to the Free Software
## Foundation, Inc., or visit: http://www.gnu.org/.
##
## Author(s): Stoq Team <stoq-devel@async.com.br>
##

import datetime
import os

import mock

from stoqlib.gui.uitestutils import GUITest
from stoqlib.gui.dialogs.financialreportdialog import FinancialReportDialog
from stoqlib.lib.translation import stoqlib_gettext

_ = stoqlib_gettext


class TestFinancialReportDialog(GUITest):
    @mock.patch('stoqlib.gui.dialogs.financialreportdialog.SpreadSheetExporter')
    def test_confirm_empty(self, exporter):
        try:
            dialog = FinancialReportDialog(self.store)
            self.click(dialog.ok_button)
            self.check_dialog(dialog, 'financial-report-dialog-empty')
            exporter.export_temporary.assert_called_once()
        finally:
            os.unlink(dialog.temporary.name)

    @mock.patch('stoqlib.gui.dialogs.financialreportdialog.SpreadSheetExporter')
    def test_confirm_created(self, exporter):
        account = self.create_account()
        transaction = self.create_account_transaction(account)
        transaction.date = datetime.datetime(2012, 2, 1)

        try:
            dialog = FinancialReportDialog(self.store)
            self.click(dialog.ok_button)
            self.check_dialog(dialog, 'financial-report-dialog-create')

            exporter.export_temporary.assert_called_once()
        finally:
            os.unlink(dialog.temporary.name)
