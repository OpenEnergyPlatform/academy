# OEP Client Tutorial 03 - Download data from the Open Energy Platform using the OEP Client in the command line

<!-- keep img below title and without align="left"  -->
<img src="https://raw.githubusercontent.com/OpenEnergyPlatform/organisation/refs/heads/production/logo/OpenEnergyFamily_Logo_OpenEnergyPlatform.svg" alt="OpenEnergy Platform" height="75" width="75" />

## Learnings

This tutorials will enable you to:

- [Download data](#download-data)
- [Download filtered data](#download-filtered-data)
- [Download metadata](#download-metadata)

## Requirements

- Python packages:

  - `oep-client>=0.17` (installs also the command line tool)

- Skills:
  - use the command line

## Feedback
You can provide feedback on this tutorial here: https://github.com/OpenEnergyPlatform/academy/issues/237


## Setup

- Linux

  ```shell
  table=tutorial_example_table
  ```

- Windows

  ```cmd
  SET table=tutorial_example_table
  ```

## Help

Show available commands:

```shell
oep-client --help
```

## Download data

requires execution of [setup](#setup)

- Linux

  ```shell
  oep-client select $table $table.data.csv
  ```

- Windows

  ```cmd
  oep-client select %table% %table%.data.csv
  ```

## Download filtered data

In this example, we don't save the data to a file
but just show results in the command line:

- Linux

  ```cmd
  oep-client select $table --where "is_active=true" --where "capacity_mw>10"
  ```

- Windows

  ```cmd
  oep-client select %table% --where "is_active=true" --where "capacity_mw>10"
  ```

## Download metadata

- Linux

  ```shell
  oep-client metadata get $table
  ```

- Windows

  ```cmd
  oep-client metadata get %table%
  ```

## About this tutorial

:oep-logo-sirop:

- Title: OEP Client Tutorial 03 - Download data from the Open Energy Platform using the OEP Client in the command line
- Author: Christian Winger
- Copyright: [Öko-Institut](https://www.oeko.de) (2024)
- License: [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/deed.en)
- Attribution: Öko-Institut (2024): Download data from the Open Energy Platform using the OEP Client in the command line
- Link: https://openenergyplatform.github.io/academy/tutorials/02_oep_client/03_client_cli_download/
- Description: Tutorial on how to set up the OEP client and use it for downloading data via the command line.
- ProficiencyLevel: 
- TargetGroup:  
- Keywords: OEP client, command line, download
- Language: en
- PublicationDate: 2024-03-20
- Last update: :oep-auto-lastupdate:
- Version: 1.0


- Title: OEP Client Tutorial 02 - Upload data to the Open Energy Platform using the OEP Client in a python script
- Author: Christian Winger, Jonas Huber, Hannah Förster, Vismaya Jochem
- Copyright: [Öko-Institut](https://www.oeko.de) (2024)
- License: [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/deed.en)
- Attribution: Öko-Institut (2024): Upload data to the Open Energy Platform using the OEP Client in a python script
- Link: https://openenergyplatform.github.io/academy/tutorials/02_oep_client/02_client_python_upload/
- Description: Tutorial on how to set up the OEP client and use it for uploading data.
- ProficiencyLevel: 
- TargetGroup:  
- Keywords: OEP client, OEP, upload
- Language: en
- PublicationDate: 2024-03-20
- Last update: :oep-auto-lastupdate:
- Version: 1.0
