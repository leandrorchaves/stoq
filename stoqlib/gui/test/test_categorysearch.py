# -*- coding: utf-8 -*-
# vi:si:et:sw=4:sts=4:ts=4

##
## Copyright (C) 2012 Async Open Source <http://www.async.com.br>
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

from stoqlib.gui.search.categorysearch import SellableCategorySearch
from stoqlib.gui.uitestutils import GUITest


class TestSellableCategorySearch(GUITest):
    def testSearch(self):
        # Create some more categories to populate the search
        category1 = self.create_sellable_category(u"Category 1")
        self.create_sellable_category(u"Category 2",
                                      parent=category1)
        category3 = self.create_sellable_category(u"Category 3",
                                                  parent=category1)
        self.create_sellable_category(u"Category 4",
                                      parent=category3)
        self.create_sellable_category(u"Category 5")

        self.store.flush()
        search = SellableCategorySearch(self.store)
        search.search.refresh()
        self.check_search(search, 'sellable-category')
