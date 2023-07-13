<img src="https://raw.githubusercontent.com/OpenEnergyPlatform/academy/develop/docs/data/img/OEP_logo_2_no_text.svg" alt="OpenEnergy Platform" height="75" width="75" align="left"/>

# API Tutorial 02 - Download data using the OepClient in a python script

## Learnings

- [Download data](#download-data)
- [Download filtered data (Not implemented yet)](#download-filtered-data)
- [Download metadata](#download-metadata)

## Requirements

- Python packages:

  - `oep-client` (installs also the command line tool)

- Skills:
  - use the command line

## Setup

- Linux

  ```shell
  table=tutorial_example_table
  ```

- Windows

  ```shell
  SET table=tutorial_example_table
  ```

## Download data

requires execution of [setup](#setup)

- Linux

  ```shell
  oep-client select $table output.json
  ```

  ```shell
  oep-client select $table $table.csv
  ```

- Windows

  ```shell
  oep-client select %table% %table%.json
  ```

  ```shell
  oep-client select %table% %table%.csv
  ```

## Download filtered data

Not yet implemented

## Download metadata

- Linux

  ```shell
  oep-client metadata get $table $table.metadata.json
  ```

- Windows

  ```shell
  oep-client metadata get %table% %table%.metadata.json
  ```
