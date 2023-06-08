---
tags:
  - metadata
---

# 07 - Metadata

You can give [feedback to this course](https://github.com/OpenEnergyPlatform/academy/issues/187) on GitHub


## For whom is this training and what can you learn?

:oep-icon-info: **This course is aimed at researchers, who want to**

- publish their data on the OEP
- provide metadata along with their energy data

:oep-icon-info: **After reading the sections of this training course you will know**

- What OEMetadata are and how they are structured
- where to find data with OEMetadata and how to create your own
- How to upload, download and edit OEMetadata
- How to use the different tools available for OEMetadata

## What are OEMetadata?

- The [Open Energy Metadata standard](https://github.com/OpenEnergyPlatform/oemetadata) (OEMetadata) describes a metadata standard used to annotate energy related data
- The development of OEMetadata is a community effort and takes place on
  [GitHub](https://github.com/OpenEnergyPlatform/oemetadata/issues)
- In the following sections of this course we have bundled information on how to use the standard
- There is a short [tutorial on how to get started with OEMetadata](../tutorials/metadata/getting_started_with_OEMetadata.ipynb)
## What's the meaning of all the keys?

- There is a comprehensive list of keys, their meaning and example uses in the
  [key description](https://github.com/OpenEnergyPlatform/oemetadata/blob/master/metadata/latest/metadata_key_description.md) in the OEMetadata repository

## How can I work with OEMetadata?

- For all data on the [OpenEnergyPlatform (OEP)](https://openenergy-platform.org/), you can look at the dataset's provided metadata by clicking on "Meta Information"
    - If you are the owner of the dataset, you can click "edit" and you're direcly working its OEMetadata
- [A guide on publishing data on the OEP](../tutorials/upload/OEP_Research_Data_Publishing_Guidebook.ipynb) includes the creation of metadata

## What other tools to work with OEMetadata are there?

- [The tool for metadata conversion and integration is omi](https://github.com/OpenEnergyPlatform/omi)
- [How to Validate that your metadata is a datapackage](../tutorials/metadata/getting_started_with_OEMetadata.ipynb)
- A helpful tool for publishing a set of data with associated metadata is oem2orm. It translates the table descriptions from the metadata with an object relational mapper into a database structure. That way it can take a valid pair of data and metadata and upload it directly to the OEP. The structure of both needs to valid. [A tutorial on the use of oem2orm](../tutorials/upload/OEP_Upload_Process_Data_and_Metadata_oem2orm.ipynb) explains the upload process
- The oep client is a tool that can create, upload, download and delete tables. It also downloads and updates metadata. It's more versatile than oem2orm but less focussed on metadata. There is a [tutorial using oem2orm and oepclient](../tutorials/http://localhost:8888/notebooks/docs/tutorials/upload/OEP_Upload_Process_Data_and_Metadata_oep-client.ipynb) to upload some data and metadata

## include existing material - TODO upload location

- poster
- presentation

---

## About this course

:oep-logo-sirop:

- Authors: christian-rli
- Copyright: Reiner Lemoine Institut
- Contact: christian.hofmann@rl-institut.de
- License: [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/deed.en)
- Attribution: Reiner Lemoine Institut: OEMetadata Academy Course, Last Update: 2023-06-08
- You can give [feedback to this course](https://github.com/OpenEnergyPlatform/academy/issues/187) on GitHub
