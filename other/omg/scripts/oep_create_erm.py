"""
Create ERM diagrams for all tables in a specific database
schema.

-> Change the const SCHEMA variable to a schema present on OEP.
"""

import getpass  # noqa: unused
import importlib
import os  # noqa: unused
from collections import namedtuple  # noqa: unused

import eralchemy
import oedialect  # noqa: unused
import saio
import sqlalchemy as sa  # noqa: unused
from oem2orm import oep_oedialect_oem2orm as oem2orm
from sqlalchemy import inspect

db = oem2orm.setup_db_connection()
insp = inspect(db.engine)

# add a slug to filter tables
filter_list = "oemof_b3"

SCHEMA = "model_draft"

for table_name in insp.get_table_names(schema=SCHEMA):
    if filter_list in table_name:
        saio.register_schema(SCHEMA, db.engine)
        # from saio.scenario import Base
        TableClass = getattr(importlib.import_module("saio." + SCHEMA), table_name)
        # instance = TableClass()

        filename = "model_draft/" + table_name + ".pdf"
        eralchemy.render_er(TableClass, filename)
