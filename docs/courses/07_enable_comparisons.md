# 06 - Comparing data - Enable scenario projection comparison (under development)

This training course provides guidance on how you can document typical numerical data from climate and energy modelling so
that the likelihood of a good-quality semi-automated scenario projection comparison based on the Open Enrgy Knowledgegraph (OEKG) increases.

## For whom is this training and what can you learn?

:oep-icon-info: **This course is aimed at researchers, no matter whether you have programming skills or not, who**

- want to publish their data on the OEP
- want that their data enables good quality [scenario projection](https://openenergy-platform.org/ontology/oeo/OEO_00010262) comparisons

:oep-icon-info: **After reading the sections of this training course you will**

- be able to document key scenario projection data in a way that helps the Open Energy Knowledge Graph (OEKG) to process semi-automated scenario projection comparisons

## Why is it important to document my numerical data in a certain way?

The OEP allows you to contribute numerical data in any structure and in any unit you want to. This is an important design feature of the OEP: it allows for a broad contribution of scenario projection data from heterogenous backgrounds. By allowing this, the OEP makes it easy for its users to contribute their data, without forcing them to invest additional time to obey to a mandatory format.

This potential heterogenity of how numerical data is structured and documented in terms of units, makes it challenging for semi-automated scenario projection comparisons to provide spot on reusults.

Thus we decided to provide some guidance on how to document your data so that the likelihood increases this data contributes to good quality semi-automated scenario projection comparisons that - sometime in the future - the OEKG will offer on the OEP.

Below we compiled a limited list of key input- and output data to many energy system models. For those we suggest to report data in specific units that are commonly used. 

Below we summarise this in a tabular format for easy reference. If a variable / parameter is already represented in the [Open Energy Ontology](https://openenergy-platform.org/ontology/) (OEO) we linked to its definition the first time it occurs below. 

## Key output data

|  Data |Suggested unit   | Note  |
|---|---|---|
|  [GHG emissions](https://openenergy-platform.org/ontology/oeo/OEO_00140082) per sector |Mt [CO2e](https://openenergy-platform.org/ontology/oeo/OEO_00140083)   |per [CRF sector](https://openenergy-platform.org/ontology/oeo/OEO_00010402) if possible|
| CO2 emissions  | Mt CO2e |  per CRF sector if possible |
| [marginal cost](https://openenergy-platform.org/ontology/oeo/OEO_00040008) of electricity generation    | Euro (base year) / MWh   | real monetary values allow easier comparison |
|[levelised cost of electricity](https://openenergy-platform.org/ontology/oeo/OEO_00020127) generation|Euro (base year) / MWh|real monetary values allow easier comparison|
|net electricity imports|GWh||
|total [gross electricity generation](https://openenergy-platform.org/ontology/oeo/OEO_00240012)|GWh||
|total [net electricity generation](https://openenergy-platform.org/ontology/oeo/OEO_00240013)|GWh||
|(peak electricity generation)|GWh||


## Key input data

|  Data |Suggested unit   | Note   |
|---|---|---|
|  [GDP](https://openenergy-platform.org/ontology/oeo/OEO_00140013) |Million Euro (base year)   |  real monetary values allow easier comparison |
|  [Gross value added](https://openenergy-platform.org/ontology/oeo/OEO_00140023) per sector | Milltion Euro (base year)  | real monetary values allow easier comparison  |
| [Population](https://openenergy-platform.org/ontology/oeo/OEO_00230013)  | persons   |   |
|  International [natural gas](https://openenergy-platform.org/ontology/oeo/OEO_00000292) [import price](https://openenergy-platform.org/ontology/oeo/OEO_00240036) | Euro (base year) / MWh   | real monetary values allow easier comparison  |
| International [crude oil](https://openenergy-platform.org/ontology/oeo/OEO_00000115) import price  | Euro (base year ) / MWh   | real monetary values allow easier comparison  |
| International [coal](https://openenergy-platform.org/ontology/oeo/OEO_00000088) import price   | Euro (base year) / MWh  | real monetary values allow easier comparison  |
|Total [primary energy consumption](https://openenergy-platform.org/ontology/oeo/OEO_00050018)|MWh||
|Primary energy consumption by [energy carrier](https://openenergy-platform.org/ontology/oeo/OEO_00020039)|MWh||
|Total [final energy consumption](https://openenergy-platform.org/ontology/oeo/OEO_00050016)|MWh||
|Final energy consumption by sector|MWh||
|Final energy consumption by energy carrier|MWh||
|[Steel](https://openenergy-platform.org/ontology/oeo/OEO_00240034) production|Mt||
|[Cement](https://openenergy-platform.org/ontology/oeo/OEO_00240029) production|Mt||
|Number of passenger kilometres (all modes)|Million pkm||
|Freight transport tonnes (all modes)|Million tkm||
|Heating degree days|°C temperature sum||
|Cooling degree days|°C temperature sum||
|Total [Generation capacity](https://openenergy-platform.org/ontology/oeo/OEO_00010257)|MW||
|Generation capacity by energy carrier|MW||
|[Energy storage](https://openenergy-platform.org/ontology/oeo/OEO_00000159) capacity|MWh||
|Grid restrictions|true/false||









## About this course

:oep-logo-sirop:

- Authors: Hannah Förster
- Copyright: (c) Öko-Institut (2023)
- Contact: oedb@oeko.de. License: [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/deed.en)
- Attribution: Öko-Institut (2023): Comparing data - Enable scenario projection comparison on the Open Energy Platform. 
- Last update: 2023-04-17
