/*
This script provides an SQL example of the metadata documentation.
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
- Dates and time must follow the ISO8601 (JJJJ-MM-TT; 1 a; 1 h)
- Use a space between Numbers and units (100 m)
- Languages must follow the IETF (BCP47) format (en-US; de-DE)
- If not applicable use "none"
*/

-- table
DROP TABLE IF EXISTS    model_draft.oep_metadata_table_example_v14 CASCADE;
CREATE TABLE            model_draft.oep_metadata_table_example_v14 (
    id      serial,
    year    integer,
    value   double precision,
    geom    geometry(Point, 4326),
    CONSTRAINT oep_metadata_table_example_v14_pkey PRIMARY KEY (id) );


-- metadata
COMMENT ON TABLE model_draft.oep_metadata_table_example_v14 IS '
{"name": "oep_metadata_table_example_v14",
"title": "Good example title",
"id": "http://openenergyplatform.org/dataedit/view/model_draft/oep_metadata_table_example_v14",
"description": "example metadata for example data",
"language": [ "en-GB", "en-US", "de-DE", "fr-FR" ],
"keywords": [ "example", "template", "test" ],
"publication_date": "2018-06-12",
"context": 
    {"homepage": "https://reiner-lemoine-institut.de/szenariendb/",
    "documentation": "https://github.com/OpenEnergyPlatform/organisation/wiki/metadata",
    "source_code": "https://github.com/OpenEnergyPlatform/examples/tree/master/metadata",
    "contact": "https://github.com/Ludee",
    "grant_no": "03ET4057"},
"spatial": 
    {"location": "none",
    "extent": "europe",
    "resolution": "100 m"},
"temporal": 
    {"reference_date": "2016-01-01",
    "start": "2017-01-01T00:00+01",
    "end": "2017-12-31T23:00+01",
    "resolution": "1 h"},
"sources": [
    {"title": "OpenEnergyPlatform Metadata Example",
    "description": "Metadata description",
    "url": "https://github.com/OpenEnergyPlatform",
    "license": "Creative Commons Zero v1.0 Universal (CC0-1.0)", 
    "copyright": "© Reiner Lemoine Institut"},
    {"title": "OpenStreetMap",
    "description": "A collaborative project to create a free editable map of the world",
    "url": "https://www.openstreetmap.org/",
    "license": "ODbL-1.0",
    "copyright": "© OpenStreetMap contributors"} ],
"licenses": [
    {"id": "ODbL-1.0",
    "title": "Open Data Commons Open Database License 1.0",
    "url": "https://opendatacommons.org/licenses/odbl/1.0/",
    "instruction": "You are free: To Share, To Create, To Adapt; As long as you: Attribute, Share-Alike, Keep open!",
    "copyright": "© Reiner Lemoine Institut"}],
"contributors": [
    {"title": "Ludee", "email": "none", "date": "2016-06-16", "object": "metadata", "comment": "Create metadata"},
    {"title": "Ludee", "email": "none", "date": "2016-11-22", "object": "metadata", "comment": "Update metadata"},
    {"title": "Ludee", "email": "none", "date": "2016-11-22", "object": "metadata", "comment": "Update header and license"},
    {"title": "Ludee", "email": "none", "date": "2017-03-16", "object": "metadata", "comment": "Add license to source"},
    {"title": "Ludee", "email": "none", "date": "2017-03-28", "object": "metadata", "comment": "Add copyright to source and license"},
    {"title": "Ludee", "email": "none", "date": "2017-05-30", "object": "metadata", "comment": "Release metadata version 1.3"},
    {"title": "Ludee", "email": "none", "date": "2017-06-26", "object": "metadata", "comment": "Move reference_date into temporal and remove array"},
    {"title": "Ludee", "email": "none", "date": "2018-07-19", "object": "metadata", "comment": "Start metadata version 1.4"},
    {"title": "Ludee", "email": "none", "date": "2018-07-26", "object": "data", "comment": "Rename table and files"},
    {"title": "Ludee", "email": "none", "date": "2018-10-18", "object": "metadata", "comment": "Add contribution object"},
    {"title": "christian-rli", "email": "none", "date": "2018-10-18", "object": "metadata", "comment": "Add datapackage compatibility"},
    {"title": "Ludee", "email": "none", "date": "2018-11-02", "object": "metadata", "comment": "Release metadata version 1.4"},
    {"title": "christian-rli", "email": "none", "date": "2019-02-05", "object": "metadata", "comment": "Apply template structure to example."},
    {"title": "Ludee", "email": "none", "date": "2019-03-22", "object": "metadata", "comment": "Hotfix foreignKeys"} ],
"resources": [
    {"profile": "tabular-data-resource",
    "name": "model_draft.oep_metadata_table_example_v14",
    "path": "http://openenergyplatform.org/dataedit/view/model_draft/oep_metadata_table_example_v14",
    "format": "PostgreSQL",
    "encoding" : "UTF-8",
    "schema": {
        "fields": [
            {"name": "id", "description": "Unique identifier", "type": "serial", "unit": "none"},
            {"name": "year", "description": "Reference year", "type": "integer", "unit": "none"},
            {"name": "value", "description": "Example value", "type": "double precision", "unit": "MW"},
            {"name": "geom", "description": "Geometry", "type": "geometry(Point, 4326)", "unit": "none"} ],
        "primaryKey": ["id"],
        "foreignKeys": [{
                "fields": ["year"],
                "reference": {
                    "resource": "schema.table",
                    "fields": ["year"] } } ] },
    "dialect": 
        {"delimiter": "none",
        "decimal_separator": "."} } ],
"_comment": {
    "_metadata_version": "1.4",
    "_metadata_license": "Creative Commons Zero v1.0 Universal (CC0-1.0)",
    "_metadata_license_url": "https://creativecommons.org/publicdomain/zero/1.0/",
    "_additional_information": {
        "_dates": "Dates and time must follow the ISO8601 including time zone (YYYY-MM-DD or YYYY-MM-DDThh:mm:ss±hh)",
        "_units": "Use a space between Numbers and units (100 m)",
        "_languages": "Languages must follow the IETF (BCP47) format (en-US; de-DE)",
        "_none": "If not applicable use (none)"} } }';

-- format verification
SELECT obj_description('model_draft.oep_metadata_table_example_v14' ::regclass) ::json;

-- index GIST (geom)
CREATE INDEX oep_metadata_table_example_v14_geom_idx
    ON model_draft.oep_metadata_table_example_v14 USING GIST (geom);

-- grant (oeuser)
ALTER TABLE model_draft.oep_metadata_table_example_v14 OWNER TO oeuser;

-- scenario log (project,version,io,schema_name,table_name,script_name,comment)
SELECT scenario_log('OEP', 'examples','setup','model_draft','oep_metadata_table_example_v14','oep_metadata_example_v1.4.sql',' ');
