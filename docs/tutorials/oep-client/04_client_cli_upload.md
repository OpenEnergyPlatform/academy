<img src="https://raw.githubusercontent.com/OpenEnergyPlatform/academy/develop/docs/data/img/OEP_logo_2_no_text.svg" alt="OpenEnergy Platform" height="75" width="75" align="left"/>

# API Tutorial 02 - Upload data using the OepClient in a python script

## Learnings

This tutorials will enable you to:

- [Create a table on the OEP](#create-table)
- [Upload data to that table](#upload-data)
- [Upload metadata accompanying the data](#upload-metadata)
- [Delete the table and the corresponding metadata](#delete-table)

## Requirements

- Python packages:

  - `oep-client` (installs also the command line tool)
  - `wget` (or similar, to download example data)

- Skills:
  - use the command line

## Setup

- Linux

  ```shell
  table=test_table_$RANDOM
  topic=sandbox
  token=$OEP_API_TOKEN
  ```

- Windows

  ```shell
  SET table=test_table_%RANDOM%
  SET topic=sandbox
  SET token=%OEP_API_TOKEN%
  ```

Download the example data:

```shell
wget https://raw.githubusercontent.com/OpenEnergyPlatform/academy/production/docs/data/tutorial_example_table.data.csv
wget https://raw.githubusercontent.com/OpenEnergyPlatform/academy/production/docs/data/tutorial_example_table.data.json
wget https://raw.githubusercontent.com/OpenEnergyPlatform/academy/production/docs/data/tutorial_example_table.metadata.json
```

## Create table

This part of the code creates the table you will later upload to the OEP.

To be able to execute this part you will need to have executed the [setup](#setup)

- Linux

  ```shell

  ```

- Windows

  ```shell
  oep-client --token %token% --schema %topic% create %table% upload_tutorial_example_data.metadata.json
  ```
