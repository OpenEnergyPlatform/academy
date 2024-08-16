# OEP Client Tutorial 04 - Upload data to the Open Energy Platform using the OEP Client in the command line

<!-- keep img below title and without align="left"  -->
<img src="https://raw.githubusercontent.com/OpenEnergyPlatform/academy/develop/docs/data/img/OEP_logo_2_no_text.svg" alt="OpenEnergy Platform" height="75" width="75" />

## Learnings

This tutorials will enable you to:

- [Create a table on the OEP](#create-table)
- [Upload data to that table](#upload-data)
- [Upload metadata accompanying the data](#upload-metadata)
- [Delete the table and the corresponding metadata](#delete-table)

## Requirements
To execute the following code you will need to be a registered user on the OEP and
  - have your OEP API token at hand. You find this in settings tab in your profile page. (If you don't have a token see [Things you only need to do once](https://openenergyplatform.github.io/academy/tutorials/99_other/beginners_guide/#1-things-you-only-need-to-do-once).)
  - Set the OEP_API_TOKEN env.variable to your token: (OEP_API_TOKEN='your token')

- Python packages:

  - `oep-client>=0.17` (installs also the command line tool)

- Skills:
  - use the command line

## Feedback
You can provide feedback on this tutorial here: https://github.com/OpenEnergyPlatform/academy/issues/238

## Setup

For the setup commands to work, you need to set your personal OEP API token as an environment variable. Alternatively, you can assign your token directly to the token variable. You can find the token on your OEP profile page.

- Linux

  ```shell
  token=$OEP_API_TOKEN
  table=tutorial_example_table_$RANDOM
  topic=sandbox
  example_data=https://raw.githubusercontent.com/OpenEnergyPlatform/academy/production/docs/data/tutorial_example_table.data.csv
  example_metadata=https://raw.githubusercontent.com/OpenEnergyPlatform/academy/production/docs/data/tutorial_example_table.metadata.json
  ```

- Windows

  ```cmd
  SET token=%OEP_API_TOKEN%
  SET table=tutorial_example_table_%RANDOM%
  SET topic=sandbox
  SET example_data=https://raw.githubusercontent.com/OpenEnergyPlatform/academy/production/docs/data/tutorial_example_table.data.csv
  SET example_metadata=https://raw.githubusercontent.com/OpenEnergyPlatform/academy/production/docs/data/tutorial_example_table.metadata.json
  ```

## Help

Show available commands:

```shell
oep-client --help
```

## Create table

This part of the code creates the table you will later upload to the OEP.

We need the metadata to get the table schema (columns).

To be able to execute this part you will need to have executed the [setup](#setup)

- Linux

  ```shell
    oep-client --token $token --schema $topic create $table $example_metadata
  ```

- Windows

  ```cmd
    oep-client --token %token% --schema %topic% create %table% %example_metadata%
  ```

## Upload data

This part of the code uploads the table that you have created above to the OEP.

To be able to execute this part you will need to have executed the [setup](#setup), and you will need to have [created a table](#create-table).

- Linux

  ```shell
    oep-client --token $token --schema $topic insert $table $example_data
  ```

- Windows

  ```cmd
    oep-client --token %token% --schema %topic% insert %table% %example_data%
  ```

## Upload metadata

This part of the code will upload metadata that described the data in your table to the OEP.

To be able to execute this part you will need to have executed the [setup](#setup), and you will need to have [created a table](#create-table).

- Linux

  ```shell
    oep-client --token $token --schema $topic metadata set $table $example_metadata
  ```

- Windows

  ```cmd
    oep-client --token %token% --schema %topic% metadata set %table% %example_metadata%
  ```

## Delete table

This part of the code deletes the table (including the metadata) that you have uploaded to the OEP.

To be able to execute this part you will need to have executed the [setup](#setup), and you will need to have [created a table](#create-table).

- Linux

  ```shell
  oep-client --token $token --schema $topic drop $table
  ```

- Windows

  ```cmd
  oep-client --token %token% --schema %topic% drop %table%
  ```

## About this tutorial

:oep-logo-sirop:

- Author: Christian Winger
- Copyright: [Öko-Institut](https://www.oeko.de) (2024)
- License: [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/deed.en)
- Attribution: Öko-Institut (2024): OEP Client Tutorial 04 - Upload data to the Open Energy Platform using the OEP Client in the command line
- Last update: :oep-auto-lastupdate:
