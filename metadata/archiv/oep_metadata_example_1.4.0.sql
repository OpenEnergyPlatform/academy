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
- If not applicable use null
*/

-- table
DROP TABLE IF EXISTS    model_draft.oep_metadata_table_example_v140 CASCADE;
CREATE TABLE            model_draft.oep_metadata_table_example_v140 (
    id      serial,
    year    integer,
    value   double precision,
    geom    geometry(Point, 4326),
    CONSTRAINT oep_metadata_table_example_v14_pkey PRIMARY KEY (id) );


-- metadata
COMMENT ON TABLE model_draft.oep_metadata_table_example_v140 IS '
{"name": "oep_metadata_table_example_v140",
"title": "Good example title",
"id": "http://openenergyplatform.org/dataedit/view/model_draft/oep_metadata_table_example_v140",
"description": "example metadata for example data",
"language": [ "en-GB", "en-US", "de-DE", "fr-FR" ],
"keywords": [ "example", "template", "test" ],
"publicationDate": "2018-06-12",
"context": 
    {"homepage": "https://reiner-lemoine-institut.de/szenariendb/",
    "documentation": "https://github.com/OpenEnergyPlatform/organisation/wiki/metadata",
    "sourceCode": "https://github.com/OpenEnergyPlatform/examples/tree/master/metadata",
    "contact": "https://github.com/Ludee",
    "grantNo": "03ET4057",
    "fundingAgency": "Bundesministerium für Wirtschaft und Energie",
    "fundingAgencyLogo": "https://www.innovation-beratung-foerderung.de/INNO/Redaktion/DE/Bilder/Titelbilder/titel_foerderlogo_bmwi.jpg?__blob=poster&v=2",
    "publisherLogo": "https://reiner-lemoine-institut.de//wp-content/uploads/2015/09/rlilogo.png"},
"spatial": 
    {"location": null,
    "extent": "europe",
    "resolution": "100 m"},
"temporal": 
    {"referenceDate": "2016-01-01",
    "timeseries": 
        {"start": "2017-01-01T00:00+01",
        "end": "2017-12-31T23:00+01",
        "resolution": "1 h",
        "alignment": "left",
        "aggregationType": "sum"} },
"sources": [
    {"title": "OpenEnergyPlatform Metadata Example",
    "description": "Metadata description",
    "path": "https://github.com/OpenEnergyPlatform", 
    "licenses": [
        {"name": "CC0-1.0",
        "title": "Creative Commons Zero v1.0 Universal",
        "path": "https://creativecommons.org/publicdomain/zero/1.0/legalcode",
        "instruction": "You are free: To Share, To Create, To Adapt",
        "attribution": "© Reiner Lemoine Institut"} ] },
    {"title": "OpenStreetMap",
    "description": "A collaborative project to create a free editable map of the world",
    "path": "https://www.openstreetmap.org/",
    "licenses": [
        {"name": "ODbL-1.0",
        "title": "Open Data Commons Open Database License 1.0",
        "path": "https://opendatacommons.org/licenses/odbl/1.0/index.html",
        "instruction": "You are free: To Share, To Create, To Adapt; As long as you: Attribute, Share-Alike, Keep open!",
        "attribution": "© OpenStreetMap contributors"} ] } ],
"licenses": [
    {"name": "ODbL-1.0",
    "title": "Open Data Commons Open Database License 1.0",
    "path": "https://opendatacommons.org/licenses/odbl/1.0/",
    "instruction": "You are free: To Share, To Create, To Adapt; As long as you: Attribute, Share-Alike, Keep open!",
    "attribution": "© Reiner Lemoine Institut © OpenStreetMap contributors"}],
"contributors": [
    {"title": "Ludee", "email": null, "date": "2016-06-16", "object": "metadata", "comment": "Create metadata"},
    {"title": "Ludee", "email": null, "date": "2016-11-22", "object": "metadata", "comment": "Update metadata"},
    {"title": "Ludee", "email": null, "date": "2016-11-22", "object": "metadata", "comment": "Update header and license"},
    {"title": "Ludee", "email": null, "date": "2017-03-16", "object": "metadata", "comment": "Add license to source"},
    {"title": "Ludee", "email": null, "date": "2017-03-28", "object": "metadata", "comment": "Add copyright to source and license"},
    {"title": "Ludee", "email": null, "date": "2017-05-30", "object": "metadata", "comment": "Release metadata version 1.3"},
    {"title": "Ludee", "email": null, "date": "2017-06-26", "object": "metadata", "comment": "Move referenceDate into temporal and remove array"},
    {"title": "Ludee", "email": null, "date": "2018-07-19", "object": "metadata", "comment": "Start metadata version 1.4"},
    {"title": "Ludee", "email": null, "date": "2018-07-26", "object": "data", "comment": "Rename table and files"},
    {"title": "Ludee", "email": null, "date": "2018-10-18", "object": "metadata", "comment": "Add contribution object"},
    {"title": "christian-rli", "email": null, "date": "2018-10-18", "object": "metadata", "comment": "Add datapackage compatibility"},
    {"title": "Ludee", "email": null, "date": "2018-11-02", "object": "metadata", "comment": "Release metadata version 1.4"},
    {"title": "christian-rli", "email": null, "date": "2019-02-05", "object": "metadata", "comment": "Apply template structure to example"},
    {"title": "Ludee", "email": null, "date": "2019-03-22", "object": "metadata", "comment": "Hotfix foreignKeys"},
    {"title": "Ludee", "email": null, "date": "2019-07-09", "object": "metadata", "comment": "Release metadata version OEP-1.3.0"} ],
"resources": [
    {"profile": "tabular-data-resource",
    "name": "model_draft.oep_metadata_table_example_v140",
    "path": "http://openenergyplatform.org/dataedit/view/model_draft/oep_metadata_table_example_v140",
    "format": "PostgreSQL",
    "encoding" : "UTF-8",
    "schema": {
        "fields": [
            {"name": "id", "description": "Unique identifier", "type": "serial", "unit": null},
            {"name": "year", "description": "Reference year", "type": "integer", "unit": null},
            {"name": "value", "description": "Example value", "type": "double precision", "unit": "MW"},
            {"name": "geom", "description": "Geometry", "type": "geometry(Point, 4326)", "unit": null} ],
        "primaryKey": ["id"],
        "foreignKeys": [{
                "fields": ["year"],
                "reference": {
                    "resource": "schema.table",
                    "fields": ["year"] } } ] },
    "dialect": 
        {"delimiter": null,
        "decimalSeparator": "."} } ],
"review": {
    "path": "https://github.com/OpenEnergyPlatform/data-preprocessing/wiki",
    "badge": "platin"},
"metaMetadata":
    {"metadataVersion": "OEP-1.4.0",
    "metadataLicense":
        {"name": "CC0-1.0",
        "title": "Creative Commons Zero v1.0 Universal",
        "path": "https://creativecommons.org/publicdomain/zero/1.0/"} },
"_comment":
    {"metadata": "Metadata documentation and explanation (https://github.com/OpenEnergyPlatform/organisation/wiki/metadata)",
    "dates": "Dates and time must follow the ISO8601 including time zone (YYYY-MM-DD or YYYY-MM-DDThh:mm:ss±hh)",
    "units": "Use a space between numbers and units (100 m)",
    "languages": "Languages must follow the IETF (BCP47) format (en-GB, en-US, de-DE)",
    "licenses": "License name must follow the SPDX License List (https://spdx.org/licenses/)",
    "review": "Following the OEP Data Review (https://github.com/OpenEnergyPlatform/data-preprocessing/wiki)",
    "null": "If not applicable use (null)"} }';

-- format verification
SELECT obj_description('model_draft.oep_metadata_table_example_v140' ::regclass) ::json;

-- index GIST (geom)
CREATE INDEX oep_metadata_table_example_v140_geom_idx
    ON model_draft.oep_metadata_table_example_v140 USING GIST (geom);

-- grant (oeuser)
ALTER TABLE model_draft.oep_metadata_table_example_v140 OWNER TO oeuser;

-- scenario log (project,version,io,schema_name,table_name,script_name,comment)
SELECT scenario_log('OEP', 'examples','setup','model_draft','oep_metadata_table_example_v140','oep_metadata_example',' ');
