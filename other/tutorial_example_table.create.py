"""
create the example in the model draft,
so that it is consistent with upload tutorial
"""

import json
from getpass import getpass
from os import environ

import requests as req

topic = "model_draft"
table = "tutorial_example_table"
token = environ.get("OEP_API_TOKEN") or getpass("Enter your OEP API token:")
auth_headers = {"Authorization": "Token %s" % token}
table_api_url = f"https://openenergy-platform.org/api/v0/schema/{topic}/tables/{table}/"
table_schema = {
    "columns": [
        {"name": "id", "data_type": "bigserial", "primary_key": True},
        {"name": "name", "data_type": "varchar(18)", "is_nullable": False},
        {"name": "is_active", "data_type": "boolean"},
        {"name": "capacity_mw", "data_type": "float"},
        {"name": "installation_datetime_utc", "data_type": "datetime"},
        {"name": "location", "data_type": "geometry"},
    ]
}

req.delete(table_api_url, headers=auth_headers)
req.put(
    table_api_url, json={"query": table_schema}, headers=auth_headers
).raise_for_status()
with open("tutorial_example_table.data.json", "rb") as file:
    data = json.load(file)
res = req.post(
    table_api_url + "rows/new", json={"query": data}, headers=auth_headers
).raise_for_status()
with open("tutorial_example_table.metadata.json", "rb") as file:
    metadata = json.load(file)
res = req.post(
    table_api_url + "meta/", json=metadata, headers=auth_headers
).raise_for_status()
