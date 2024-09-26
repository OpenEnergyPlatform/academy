---
tags:
  - metadata
---

# 07 - Metadata

You can provide [feedback to this course](https://github.com/OpenEnergyPlatform/academy/issues/187) on GitHub

## Who is this course for and what can you learn?

:oep-icon-info: **This course is aimed at researchers, who want to**

- publish their data on the OEP
- provide metadata along with their energy data

:oep-icon-info: **After reading the sections of this training course you will know**

- what OEMetadata are and how they are structured
- where to find data with OEMetadata and how to create your own
- how to upload, download and edit OEMetadata
- how to use the different tools available for OEMetadata

## Introduction: What is Metadata?

Metadata, in simple terms, refer to data about data.
They provide valuable information regarding the characteristics, properties,
and context of a specific data item.
Metadata answer the questions of "who, what, when, where, and how" related to the data.
Metadata plays a crucial role in organizing, managing, and understanding information.

## What is the Open Energy Metadata?

- [Open Energy Metadata](https://github.com/OpenEnergyPlatform/oemetadata) (OEMetadata) describe a metadata standard used to annotate energy related data
- The development of OEMetadata is a community effort and takes place on [GitHub](https://github.com/OpenEnergyPlatform/oemetadata/issues)
- In the following sections of this course we have collected information on how to use the standard
- There is a short :oep-icon-code: [tutorial on how to get started with OEMetadata](../tutorials/99_other/getting_started_with_OEMetadata.ipynb)

## What's the meaning of all the metadata keys?

- The OEMetadata repository provides a comprehensive list of keys, along with their meanings and examples of their uses, in the [key description](https://github.com/OpenEnergyPlatform/oemetadata/blob/master/metadata/latest/metadata_key_description.md) section.

## How can I work with OEMetadata?

- :oep-icon-text: [Tutorial to create OEMetaData](../tutorials/99_other/oemetadata.md)
This tutorial gives a detailed description on how to create and modify OEMetaData (with the OEOMetaDataBuilder).
- A :oep-icon-code: [guide on publishing data on the OEP](../tutorials/99_other/OEP_Research_Data_Publishing_Guidebook.ipynb) includes the creation of metadata
- For all datasets on the [Open Energy Platform (OEP)](https://openenergyplatform.org/), you can look at provided metadata by clicking on "Meta Information"
  - If you are the owner of the dataset, you can click "edit" and you're directly working on the OEMetadata

## What other tools to work with OEMetadata are there?

- A tool for [metadata conversion and integration is `OMI`](https://github.com/OpenEnergyPlatform/omi)
- An additional helpful tool for publishing a set of data with associated metadata is [oem2orm](https://github.com/OpenEnergyPlatform/oem2orm). It can translate table descriptions from metadata into a database structure via an object relational mapper. That way it can take a valid pair of data and metadata and upload it directly to the OEP. The structures of both need to be valid.
- The `oep client` is a tool that can create, upload, download and delete tables. It also downloads and updates metadata. It's more versatile than oem2orm but less focussed on metadata. There is a :oep-icon-code: [tutorial using the oep-client](../../tutorials/02_oep_client/02_client_python_upload/) to upload some data and metadata
- How to :oep-icon-code: [Validate that your metadata is a datapackage](../tutorials/99_other/getting_started_with_OEMetadata.ipynb)

## Supplementary material and further readings

- A poster that describes the structure of the OEMetadata and their relation to the [Open Energy Ontology](05_ontology.md):
  - [Poster] Open Energy Metadata (OEMetadata): Publishing Energy Data Enriched with Ontology References [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.8026863.svg)](https://doi.org/10.5281/zenodo.8026863)
- A presentation that describes the ontology structure in detail and puts it in broader context
  - [Presentation] Capacity building session - Hülk - Publication of FAIR Data and Metadata: [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.7835380.svg)](https://doi.org/10.5281/zenodo.7835380)

---

## About this course

:oep-logo-sirop:

- Authors: christian-rli, Ludwig Hülk (@Ludee)
- Copyright: Reiner Lemoine Institut
- Contact: christian.hofmann@rl-institut.de
- License: [CC-BY-4.0](https://creativecommons.org/licenses/by/4.0/deed.en)
- Attribution: Open Energy Academy - Metadata Course © [Reiner Lemoine Institut](https://reiner-lemoine-institut.de/)
- You can provide [feedback to this course](https://github.com/OpenEnergyPlatform/academy/issues/187) on GitHub
