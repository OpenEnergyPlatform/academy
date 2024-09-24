---
tags:
  - jupyter
  - api
---

# 04 - Upload and Publish - Contribute data to the OEP

Learn how to publish data on the [OpenEnergyPlatform](https://openenergyplatform.org/) (OEP).
You can provide feedback to this course on GitHub: [https://github.com/OpenEnergyPlatform/academy/issues/166](https://github.com/OpenEnergyPlatform/academy/issues/166)

## For whom is this training and what can you learn?

:oep-icon-info: **This course is aimed at researchers, no matter whether you have programming skills or not, who want to**

- upload their data on the OEP
- publish their tables on the OEP
- apply an embargo period on their data

:oep-icon-info: **After reading the sections of this training course you will be able to upload and publish data**

- on the OEP using a visual interface - this is for those of you who do not want to program
- on the OEP with the REST-full-HTTP API in python - this is for those of you who want to akquire some programming skills
- using the oeclient or the OEP REST-API using python - this one is for those of you who can program already

## What does 'upload' mean?

Generally 'upload' refers to transimitting any data from a computer system onto another through means of a network. In this case specifically it stands for:
- Move data and metadata onto the model draft section of the OEP.
- Create data and metadata on the OEP.

## How can I upload data to the OEP without programming skills?

:oep-icon-text: [Upload tables as csv](../tutorials/99_other/wizard.md) (tutorial):

This tutorial teaches you step-by-step on how to upload data from a .csv file to the OEP using the csv upload wizard.

## How can I upload data to the OEP as a beginner interested in programming?

:oep-icon-text: , </i>:oep-icon-code: [Beginners Guide: How to upload data to the OpenEnergy Platform and initiate the review process](../tutorials/99_other/beginners_guide.md) (tutorial):

This course (also available as PDF) describes how to upload data to the OEP using Python and the REST-API. Several steps are needed to contribute actively to the platform. Some of these you only need to do once to get started. The steps described in this document are the following: Register at the OpenEnergy Platform, Register at GitHub and get invited to the OpenEnergy Platform Group, Create data table(s) and upload data table(s), create metadata and upload metadata to GitHub, initiate data review, create scenario factsheets.

## How can I upload data to the OEP with programming skills?

:oep-icon-code: [How to upload data (and metadata) using the API](../tutorials/01_api/02_api_upload.ipynb) (tutorial:

This jupyter notebook tutorial provides you a quick way of having all the code at hand to upload your data and metadata to the OEP.

:oep-icon-code: [Use the OEP Client to upload data to the OEP](https://github.com/OpenEnergyPlatform/oep-client/) (GitHub link):

This is a link to GitHub where the OEP Client resides, including the documentation. You can use the OEP Client to upload data to the OEP. Below are two more specific tutorials providing you with hands-on information to use the OEP Client.

:oep-icon-code: [Upload data using the OEP Client in a python script](../tutorials/02_oep_client/02_client_python_upload.ipynb) (tutorial):

This jupyter notebook tutorial provides you a quick way of having all the code at hand to use the OEP Client to upload your data and metadata to the OEP. You will use a python script.

:oep-icon-code: [Upload data using the OEP Client in the command line](../tutorials/02_oep_client/04_client_cli_upload.md) (tutorial):

This jupyter notebook tutorial provides you a quick way of having all the code at hand for using the OEP Client to upload your data and metadata to the OEP. You will use the command line.

## What does 'publish' mean?

To publish something generally means to make it accessable to people. In this case specifically it stands for:
- Move table from the model draft to a target data theme on the OEP.
For data to be publish onto the OEP it must have an Open Data license.
:oep-icon-text: For further information see [SPDX-Datalicense list](https://spdx.org/licenses/)

## How can I publish my uploaded table?

 :oep-icon-text: [Tutorial to the publishing process]((../tutorials/99_other/publish.md)
  :oep-icon-code: [Tutorial to the publishing process using the API](../tutorials/03_api/03_api_publish.ipynb)
Comment: all tutorials and chapters will be linked here.
Note: As long as the data is published, it cannot be changed. It is possible to 'unpublish' data.

## What does 'embargo' mean?

Generally an 'embargo period' means a period during which access to academic publication is not allowed to users who have not paid for access. In this case it stands for:
- A period of time during which data cannot be accessed without permission. Von wem?
- The OEP Dataviewer is blocked, as well as the API-based data access.
    
## How can I apply an embargo period?

Comment: all tutorials and chapters will be linked here.
Note: The embargo can be set during data upload and data publication. Only embargo periods of 6 months or 1 year are possible. Embargoed data still requires an open license in order to be published.





---

## About this course

:oep-logo-sirop:

- Authors: Hannah Förster, Anne Siemons, Vismaya Jochem
- Copyright: [Öko-Institut](https://www.oeko.de) (2022)
- Contact: oedb@oeko.de
- License: [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/deed.en)
- Attribution: Öko-Institut (2022): Upload - Contribute data to the OEP.
- Last update: :oep-auto-lastupdate:
- You can provide feedback to this course on GitHub: [https://github.com/OpenEnergyPlatform/academy/issues/166](https://github.com/OpenEnergyPlatform/academy/issues/166)
