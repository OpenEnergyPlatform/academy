# 06 - Comparing data - Enable scenario projection comparison

This training course provides guidance on how you can document typical numerical data from climate and energy modelling so
that the likelihood of a good-quality semi-automated scenario projection comparison based on the Open Enrgy Knowledgegraph (OEKG) increases.

You can provide feedback to this course on GitHub: [https://github.com/OpenEnergyPlatform/academy/issues/174](https://github.com/OpenEnergyPlatform/academy/issues/174)

## For whom is this training and what can you learn?

:oep-icon-info: **This course is aimed at researchers, no matter whether you have programming skills or not, who want**

- to publish their data on the OEP
- that their data enables good quality [scenario projection](https://openenergyplatform.org/ontology/oeo/OEO_00010262) comparisons

:oep-icon-info: **After reading the sections of this training course you will**

- be able to document key scenario projection data in a way that helps the Open Energy Knowledge Graph (OEKG) to process semi-automated scenario projection comparisons

## Why is it important to document my numerical data in a certain way?

The OEP allows you to contribute numerical data in any structure and in any unit you want to. This is an important design feature of the OEP: it allows for a broad contribution of scenario projection data from heterogenous backgrounds. By allowing this, the OEP makes it easy for its users to contribute their data, without forcing them to invest additional time to obey to a mandatory format.

This potential heterogenity of how numerical data is structured and documented in terms of units, makes it challenging for semi-automated scenario projection comparisons to provide spot on results.

Thus, we decided to provide some guidance on how to document your data so that the likelihood increases this data contributes to good quality semi-automated scenario projection comparisons that - sometime in the future - the OEKG will offer on the OEP.

Below we compiled a limited list of key input- and output data to many energy systems models. For those we suggest to report data in specific units.

Below we summarise this in a tabular format for easy reference. We name the variable / parameter and the unit we suggest you to report that information.

If a variable / parameter is already represented in the [Open Energy Ontology](https://openenergyplatform.org/ontology/) (OEO) we link to its definition the first time it occurs below so that you can check for its exact definition.

## Key output data

| Data                                                                                                 | Suggested unit                                                                     | Note                                                                                                                                                                                                     |
| ---------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [GHG emissions](https://openenergyplatform.org/ontology/oeo/OEO_00140082) per sector                 | Mt [CO2e](https://openenergyplatform.org/ontology/oeo/OEO_00140083)                | if possible by sector using a [CRF sector division](https://openenergyplatform.org/ontology/oeo/OEO_00010402) or a [CRF-based sector division](https://openenergyplatform.org/ontology/oeo/OEO_00010402) |
| [CO2 emissions](http://openenergyplatform.org/ontology/oeo/OEO_00260008)                             | Mt CO2e                                                                            | if possible by sector using a CRF sector division or a CRF-based sector division                                                                                                                         |
| [marginal cost](https://openenergyplatform.org/ontology/oeo/OEO_00040008) of electricity generation  | Euro (base year) / [MWh](https://openenergyplatform.org/ontology/oeo/OEO_00050008) | real monetary values allow easier comparison                                                                                                                                                             |
| [levelised cost of electricity](https://openenergyplatform.org/ontology/oeo/OEO_00020127) generation | Euro (base year) / MWh                                                             | real monetary values allow easier comparison                                                                                                                                                             |
| net electricity imports                                                                              | [GWh](https://openenergyplatform.org/ontology/oeo/OEO_00050011)                    |                                                                                                                                                                                                          |
| total [gross electricity generation](https://openenergyplatform.org/ontology/oeo/OEO_00240012)       | GWh                                                                                |                                                                                                                                                                                                          |
| total [net electricity generation](https://openenergyplatform.org/ontology/oeo/OEO_00240013)         | GWh                                                                                |                                                                                                                                                                                                          |
| (peak electricity generation)                                                                        | GWh                                                                                |                                                                                                                                                                                                          |

## Key input data

| Data                                                                                                                                                           | Suggested unit                                                         | Note                                         |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------- | -------------------------------------------- |
| [GDP](https://openenergyplatform.org/ontology/oeo/OEO_00140013)                                                                                                | Million Euro (base year)                                               | real monetary values allow easier comparison |
| [Gross value added](https://openenergyplatform.org/ontology/oeo/OEO_00140023) per sector                                                                       | Million Euro (base year)                                               | real monetary values allow easier comparison |
| [Population](https://openenergyplatform.org/ontology/oeo/OEO_00230013)                                                                                         | persons                                                                |                                              |
| International [natural gas](https://openenergyplatform.org/ontology/oeo/OEO_00000292) [import price](https://openenergyplatform.org/ontology/oeo/OEO_00240036) | Euro (base year) / MWh                                                 | real monetary values allow easier comparison |
| International [crude oil](https://openenergyplatform.org/ontology/oeo/OEO_00000115) import price                                                               | Euro (base year) / MWh                                                 | real monetary values allow easier comparison |
| International [coal](https://openenergyplatform.org/ontology/oeo/OEO_00000088) import price                                                                    | Euro (base year) / MWh                                                 | real monetary values allow easier comparison |
| Total [primary energy consumption](https://openenergyplatform.org/ontology/oeo/OEO_00050018)                                                                   | MWh                                                                    |                                              |
| Primary energy consumption by [energy carrier](https://openenergyplatform.org/ontology/oeo/OEO_00020039)                                                       | MWh                                                                    |                                              |
| Total [final energy consumption](https://openenergyplatform.org/ontology/oeo/OEO_00050016)                                                                     | MWh                                                                    |                                              |
| Final energy consumption by sector                                                                                                                             | MWh                                                                    |                                              |
| Final energy consumption by energy carrier                                                                                                                     | MWh                                                                    |                                              |
| [Steel](https://openenergyplatform.org/ontology/oeo/OEO_00240034) production                                                                                   | Mt                                                                     |                                              |
| [Cement](https://openenergyplatform.org/ontology/oeo/OEO_00240029) production                                                                                  | Mt                                                                     |                                              |
| Passenger [transport performance](http://openenergyplatform.org/ontology/oeo/OEO_00320000) (all modes)                                                         | Million [pkm](http://openenergyplatform.org/ontology/oeo/OEO_00320002) |                                              |
| Freight [transport performance](http://openenergyplatform.org/ontology/oeo/OEO_00320000) (all modes)                                                           | Million [tkm](http://openenergyplatform.org/ontology/oeo/OEO_00320003) |                                              |
| Heating degree days                                                                                                                                            | °C temperature sum                                                     |                                              |
| Cooling degree days                                                                                                                                            | °C temperature sum                                                     |                                              |
| Total [Generation capacity](https://openenergyplatform.org/ontology/oeo/OEO_00010257)                                                                          | MW                                                                     |                                              |
| Generation capacity by energy carrier                                                                                                                          | MW                                                                     |                                              |
| [Energy storage](http://openenergyplatform.org/ontology/oeo/OEO_00230000)                                                                                      | MWh                                                                    |                                              |
| Grid restrictions                                                                                                                                              | true/false                                                             |                                              |

## About this course

:oep-logo-sirop:

- Authors: Hannah Förster
- Copyright: [Öko-Institut](https://www.oeko.de) (2023)
- Contact: oedb@oeko.de. License: [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/deed.en)
- Attribution: Öko-Institut (2023): Comparing data - Enable scenario projection comparison on the Open Energy Platform.
- Last update: :oep-auto-lastupdate:
- You can provide feedback to this course on GitHub: [https://github.com/OpenEnergyPlatform/academy/issues/174](https://github.com/OpenEnergyPlatform/academy/issues/174)
