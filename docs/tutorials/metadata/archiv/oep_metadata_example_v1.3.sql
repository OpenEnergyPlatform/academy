/*
This script provides an SQL example of the metadata documentation
A definition of metadata can be found in the openmod glossary http://wiki.openmod-initiative.org/wiki/Metadata
A further description can be found on http://wiki.openmod-initiative.org/wiki/DatabaseRules
Feedback for an update is collected in this issue: https://github.com/OpenEnergyPlatform/organisation/issues/10

__url__         = "https://github.com/OpenEnergyPlatform/examples/tree/master/metadata"
__copyright__   = "© Reiner Lemoine Institut"
__license__     = "Creative Commons Zero v1.0 Universal (CC0-1.0)"
__license_url__ = "https://creativecommons.org/publicdomain/zero/1.0/"
__author__      = "Ludee"
__contains__    = "http://stackoverflow.com/questions/383692/what-is-json-and-why-would-i-use-it", "https://specs.frictionlessdata.io/data-package/"

-- metadata description
-- metadata template

Additional information:
- Dates must follow the ISO8601 (JJJJ-MM-TT)
- Use a space between Numbers and units (100 m)
- If not applicable use "none"
*/

-- table
DROP TABLE IF EXISTS    model_draft.oep_metadata_table_example_v13;
CREATE TABLE            model_draft.oep_metadata_table_example_v13 (
    id      serial,
    year    integer,
    value   double precision,
    geom    geometry(Point, 4326),
    CONSTRAINT oep_metadata_table_example_v13_pkey PRIMARY KEY (id) );


-- metadata
COMMENT ON TABLE model_draft.oep_metadata_table_example_v13 IS '{
    "title": "Good example title",
    "description": "example metadata for example data",
    "language": [ "eng", "ger", "fre" ],
    "spatial":
        {"location": "none",
        "extent": "europe",
        "resolution": "100 m"},
    "temporal":
        {"reference_date": "2016-01-01",
        "start": "2017-01-01",
        "end": "2017-12-31",
        "resolution": "hour"},
    "sources": [
        {"name": "OpenEnergyPlatform Metadata Example", "description": "Metadata description", "url": "https://github.com/OpenEnergyPlatform", "license": "Creative Commons Zero v1.0 Universal (CC0-1.0)", "copyright": "© Reiner Lemoine Institut"},
        {"name": "OpenStreetMap", "description": "A collaborative project to create a free editable map of the world", "url": "https://www.openstreetmap.org/", "license": "ODbL-1.0", "copyright": "© OpenStreetMap contributors"} ],
    "license":
        {"id": "ODbL-1.0",
        "name": "Open Data Commons Open Database License 1.0",
        "version": "1.0",
        "url": "https://opendatacommons.org/licenses/odbl/1.0/",
        "instruction": "You are free: To Share, To Create, To Adapt; As long as you: Attribute, Share-Alike, Keep open!",
        "copyright": "© Reiner Lemoine Institut"},
    "contributors": [
        {"name": "Ludee", "email": "none", "date": "2016-06-16", "comment": "Create metadata"},
        {"name": "Ludee", "email": "none", "date": "2016-11-22", "comment": "Update metadata"},
        {"name": "Ludee", "email": "none", "date": "2016-11-22", "comment": "Update header and license"},
        {"name": "Ludee", "email": "none", "date": "2017-03-16", "comment": "Add license to source"},
        {"name": "Ludee", "email": "none", "date": "2017-03-28", "comment": "Add copyright to source and license"},
        {"name": "Ludee", "email": "none", "date": "2017-05-30", "comment": "Update metadata to version 1.3"},
        {"name": "Ludee", "email": "none", "date": "2017-06-26", "comment": "Update metadata version 1.3: move reference_date into temporal and remove some array"} ],
    "resources": [
        {"name": "model_draft.oep_metadata_table_example_v13",
        "format": "PostgreSQL",
        "fields": [
            {"name": "id", "description": "Unique identifier", "unit": "none"},
            {"name": "year", "description": "Reference year", "unit": "none"},
            {"name": "value", "description": "Example value", "unit": "MW"},
            {"name": "geom", "description": "Geometry", "unit": "none"} ] } ],
    "metadata_version": "1.3"}';

-- format verification
SELECT obj_description('model_draft.oep_metadata_table_example_v13' ::regclass) ::json;

-- index GIST (geom)
CREATE INDEX oep_metadata_table_example_v13_geom_idx
    ON model_draft.oep_metadata_table_example_v13 USING GIST (geom);

-- grant (oeuser)
ALTER TABLE model_draft.oep_metadata_table_example_v13 OWNER TO oeuser;

-- scenario log (project,version,io,schema_name,table_name,script_name,comment)
SELECT scenario_log('OEP', 'examples','input','model_draft','oep_metadata_table_example_v13','oep_metadata_example_v1.3.sql',' ');


-- metadata
COMMENT ON TABLE model_draft.oep_metadata_table_example_v13 IS '{
    "title": "",
    "description": "",
    "language": [ "eng", "ger" ],
    "spatial":
        {"location": "",
        "extent": "",
        "resolution": ""},
    "temporal":
        {"reference_date": "",
        "start": "",
        "end": "",
        "resolution": ""},
    "sources": [
        {"name": "", "description": "", "url": "", "license": "", "copyright": ""},
        {"name": "", "description": "", "url": "", "license": "", "copyright": ""} ],
    "license":
        {"id": "",
        "name": "",
        "version": "",
        "url": "",
        "instruction": "",
        "copyright": ""},
    "contributors": [
        {"name": "", "email": "", "date": "", "comment": ""},
        {"name": "", "email": "", "date": "", "comment": ""} ],
    "resources": [
        {"name": "",
        "format": "PostgreSQL",
        "fields": [
            {"name": "id", "description": "Unique identifier", "unit": ""},
            {"name": "year", "description": "Reference year", "unit": ""},
            {"name": "value", "description": "Example value", "unit": ""},
            {"name": "geom", "description": "Geometry", "unit": ""} ] } ],
    "metadata_version": "1.3"}';

-- format verification
SELECT obj_description('model_draft.oep_metadata_table_example_v13' ::regclass) ::json;
