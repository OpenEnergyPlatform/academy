<img src="https://raw.githubusercontent.com/OpenEnergyPlatform/academy/develop/docs/data/img/OEP_logo_2_no_text.svg" alt="OpenEnergy Platform" height="75" width="75" align="left"/>

# OEP Client Tutorial 03 - Download data using the OEP Client in the command line

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
  oep-client select $table output.data.json
  ```

  ```shell
  oep-client select $table $table.data.csv
  ```

- Windows

  ```cmd
  oep-client select %table% %table%.data.json
  ```

  ```cmd
  oep-client select %table% %table%.data.csv
  ```

## Download filtered data

In this example, we dont save the data to a file
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
  oep-client metadata get $table $table.metadata.json
  ```

- Windows

  ```cmd
  oep-client metadata get %table% %table%.metadata.json
  ```
