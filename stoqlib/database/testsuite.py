# -*- coding: utf-8 -*-
# vi:si:et:sw=4:sts=4:ts=4

##
## Copyright (C) 2006 Async Open Source <http://www.async.com.br>
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
## Author(s):   Johan Dahlin      <jdahlin@async.com.br>
##
"""Database routines which are used by the testsuite"""

import os
import pwd
import socket

from kiwi.component import provide_utility, utilities
from kiwi.log import Logger
from sqlobject.sqlbuilder import AND

from stoqlib.database.admin import initialize_system, ensure_admin_user
from stoqlib.database.interfaces import (
    ICurrentBranch, ICurrentBranchStation, ICurrentUser, IDatabaseSettings)
from stoqlib.database.runtime import (new_transaction, get_connection,
                                      get_current_station)
from stoqlib.database.settings import DatabaseSettings
from stoqlib.domain.examples.createall import create
from stoqlib.domain.person import Person, PersonAdaptToBranch
from stoqlib.domain.interfaces import IBranch, IUser
from stoqlib.domain.station import BranchStation
from stoqlib.lib.drivers import (get_fiscal_printer_settings_by_station,
                                 create_virtual_printer_for_current_station)
from stoqlib.lib.interfaces import (IApplicationDescriptions,
                                    ISystemNotifier)
from stoqlib.lib.message import DefaultSystemNotifier
from stoqlib.lib.parameters import sysparam

log = Logger('stoqlib.database.testsuite')

# Provide a fake description utility, the ProfileSettings class depends on it
class FakeApplicationDescriptions:
    def get_application_names(self):
        return []

    def get_descriptions(self):
        return []

# This notifier implementation is here to workaround trial; which
# refuses to quit if SystemExit is raised or if sys.exit() is called.
# For now it is assumed that errors() are fatal, that might change in
# the near future
class TestsuiteNotifier(DefaultSystemNotifier):
    def error(self, short, description):
        DefaultSystemNotifier.error(self, short, description)
        os._exit(1)

def _provide_database_settings():
    username = os.environ.get('STOQLIB_TEST_USERNAME',
                              pwd.getpwuid(os.getuid())[0])
    hostname = os.environ.get('STOQLIB_TEST_HOSTNAME', 'localhost')
    port = int(os.environ.get('STOQLIB_TEST_PORT', '5432'))
    dbname =  os.environ.get('STOQLIB_TEST_DBNAME',
                             '%s_test' % username)
    password = ''

    db_settings = DatabaseSettings(address=hostname,
                                   port=port,
                                   dbname=dbname,
                                   username=username,
                                   password=password)
    provide_utility(IDatabaseSettings, db_settings)

def _provide_current_user():
    user = Person.iselectOneBy(IUser, username='admin',
                               connection=get_connection())
    provide_utility(ICurrentUser, user, replace=True)

def _provide_current_station(station_name=None, branch_name=None):
    if not station_name:
        station_name = socket.gethostname()
    trans = new_transaction()
    if branch_name:
        branch = Person.selectOne(
            AND(Person.q.name == branch_name,
                PersonAdaptToBranch.q._originalID == Person.q.id),
            connection=trans)
    else:
        branches = Person.iselect(IBranch, connection=trans)
        assert branches
        branch = branches[0]

    branch = IBranch(branch)
    provide_utility(ICurrentBranch, branch)

    station = BranchStation.get_station(trans, branch, station_name)
    if not station:
        station = BranchStation.create(trans, branch, station_name)
        trans.commit()

    assert station
    assert station.is_active

    provide_utility(ICurrentBranchStation, station)
    trans.commit(close=True)

def _provide_devices():
    conn = get_connection()

    station = get_current_station(conn)
    if not get_fiscal_printer_settings_by_station(conn, station):
        create_virtual_printer_for_current_station()

# Public API

def provide_database_settings(dbname=None, address=None, port=None, username=None,
                              password=None, create=True):
    """
    @param dbname:
    @param address:
    @param port:
    @param username:
    @param password:
    @param create: Create a new empty database if one is missing
    """
    if not username:
        username = pwd.getpwuid(os.getuid())[0]
    if not dbname:
        dbname = username + '_test'
    if not address:
        address = "localhost"
    if not port:
        port = "5432"
    if not password:
        password = ""

    # Remove all old utilities pointing to the previous database
    utilities.clean()
    provide_utility(ISystemNotifier, TestsuiteNotifier(), replace=True)
    provide_utility(IApplicationDescriptions, FakeApplicationDescriptions())

    db_settings = DatabaseSettings(
        address=address, port=port, dbname=dbname, username=username,
        password=password)
    provide_utility(IDatabaseSettings, db_settings)

    rv = False
    if create:
        conn = db_settings.get_default_connection()
        if not conn.databaseExists(dbname):
            log.warning('Database %s missing, creating it' % dbname)
            conn.createDatabase(dbname, ifNotExists=True)
            rv = True
        conn.close()

    return rv

def provide_utilities(station_name, branch_name=None):
    """
    @param station_name:
    @param branch_name:
    """
    _provide_current_user()
    _provide_current_station(station_name, branch_name)
    _provide_devices()

def bootstrap_testsuite(address=None, dbname=None, port=5432, username=None,
                        password="", station_name=None, quick=False):

    """
    @param address:
    @param dbname:
    @param port:
    @param username:
    @param password:
    @param station_name:
    @param quick:
    """
    try:
        empty = provide_database_settings(
            dbname, address, port, username, password)

        if quick and not empty:
            provide_utilities(station_name)
        else:
            sysparam(get_connection()).clear_cache()
            initialize_system()
            ensure_admin_user("")
            create(utilities=True)
    except Exception, e:
        # Work around trial
        import traceback
        traceback.print_exc()
        os._exit(1)
