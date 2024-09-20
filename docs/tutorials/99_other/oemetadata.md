# OEMetaData

<!-- keep img below title and without align="left"  -->
<img src="https://raw.githubusercontent.com/OpenEnergyPlatform/academy/develop/docs/data/img/OEP_logo_2_no_text.svg" alt="OpenEnergy Platform" height="75" width="75" />

## Learnings
This tutorial will wnable you to:

- know what OEMetaData are
- create and modify OEMetaData

## Introduction

This tutorial will always refer specifically to OEMetaData (the Metadata used on the [Open Energy Platform](https://openenergyplatform.org/) (OEP)). For a more general overview please see the [course on Metadata](https://openenergyplatform.github.io/academy/courses/07_metadata/).

## Important Information on OEMetaData

- OEMetaData follow the specifications of one of the releas versions of the OEP. At the time v1.6.0, soon 2.0.0.
- OEMetaData are always a JSON-file, which can refer to other elements, e.g. websides, classes from the [Oepen Energy Ontology](https://openenergyplatform.org/viewer/oeo/) (OEO) etc.. The OEMetaData in version v1.6.0 always describes one whole dataset to a table. 
- OEMetaData follow a pattern. Find the key descriptions for the newest version of the OEMetaData on [GitHub](https://github.com/OpenEnergyPlatform/oemetadata/blob/develop/metadata/v160/metadata_key_description.md).
- There can always only be one version of the OEMetaData dataset on the OEP! Meaning that the livetime of OEMetaData is critical because othervise there might be multiple datasets to one table. In order for that not to happen the published OEMetaData for a published table on the OEP stay like this until there is a new version of the OEMetaData dataset. (For more information on the publishing process see [this course](https://openenergyplatform.github.io/academy/courses/04_upload/).)  
- The minimal requirement to the OEMetaData in order to exist on the OEP to an existing table is a filled out ID field. Here the URL of the tale must be incerted. For all other fields please follow the [key descriptions](https://github.com/OpenEnergyPlatform/oemetadata/blob/develop/metadata/v160/metadata_key_description.md) or see the information provided in the OEMetaDataBuilder.

## How to create OEMetaData

There are essintially two ways of creating OEMetaData. Both can be done with and without an already on the OEP existing table.

**Manually creating OEMetaData using the OMI**
You can manually create a OEMetaData dataset as a JSON-file on your computer. This might be useful if you want to create multiple OEMetaData datasets for tables, where some fields will be filled out the same. Then it is much easier to copy and paste the entries. It is possible to manually create OEMetaData and later on modify them via the OEMetaDataBuilder.
Note: Should only be done while using the [OpenMetadataIntegration](https://github.com/OpenEnergyPlatform/omi) (OMI). This way might result in faulty OEMetaData because the guidelines from the OEMetaDataBuilder are not provided while creating the dataset(s).

**Creating OEMetaData using the OEMetaDataBuilder**
On the OEP there is a tool to create your OEMetaData directly on the platfrom. It is called [OEMetaDataBuilder](https://openenergyplatform.org/dataedit/oemetabuilder/) and can be used when there already exist a table on the OEP for which you want tor create the OEMetaData or as standalone version when no table for which the OEMetaData dataset is for exist on the OEP.

## How to use the OEMetaDataBuilder

