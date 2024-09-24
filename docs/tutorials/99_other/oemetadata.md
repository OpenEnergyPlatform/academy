# OEMetaData

<!-- keep img below title and without align="left"  -->
<img src="https://raw.githubusercontent.com/OpenEnergyPlatform/academy/develop/docs/data/img/OEP_logo_2_no_text.svg" alt="OpenEnergy Platform" height="75" width="75" />

## Learnings
This tutorial will enable you to:

- know what OEMetaData are
- create and modify OEMetaData
- use the OEO-extended to create new units

## Introduction

This tutorial will always refer specifically to OEMetaData (the Metadata used on the [Open Energy Platform](https://openenergyplatform.org/) (OEP)). For a more general overview please see the [course on Metadata](https://openenergyplatform.github.io/academy/courses/07_metadata/).

## Important Information on OEMetaData

- OEMetaData follow the specifications of one of the release versions of the OEP. At the time v1.6.0, soon 2.0.0.
- OEMetaData are always a JSON-file, which can refer to other elements, e.g. websides, classes from the [Oepen Energy Ontology](https://openenergyplatform.org/viewer/oeo/) (OEO) etc.. The OEMetaData in version v1.6.0 always describes one whole dataset to a table. 
- OEMetaData follow a pattern. Find the key descriptions for the newest version of the OEMetaData on [GitHub](https://github.com/OpenEnergyPlatform/oemetadata/blob/develop/metadata/v160/metadata_key_description.md).
- There can always only be one version of the OEMetaData on the OEP! Meaning that the livetime of OEMetaData is critical because othervise there might be multiple datasets to one table. In order for that not to happen the published OEMetaData for a published table on the OEP stay like this until there is a new version of the OEMetaData. (For more information on the publishing process see [this course](https://openenergyplatform.github.io/academy/courses/04_upload/).)  
- The minimal requirement to the OEMetaData in order to exist on the OEP to an existing table is a filled out ID field. Here the URL of the tale must be incerted. For all other fields please follow the [key descriptions](https://github.com/OpenEnergyPlatform/oemetadata/blob/develop/metadata/v160/metadata_key_description.md) or see the information provided in the OEMetaDataBuilder.

## How to create OEMetaData

There are essintially two ways of creating OEMetaData. Both can be done with and without an already on the OEP existing table.

**Manually creating OEMetaData using the OMI**
You can manually create a OEMetaData as a JSON-file on your computer. This might be useful if you want to create multiple OEMetaData datasets for tables, where some fields will be filled out the same. Then it is much easier to copy and paste the entries. It is possible to manually create OEMetaData and later on modify them via the OEMetaDataBuilder.
Note: Should only be done while using the [OpenMetadataIntegration](https://github.com/OpenEnergyPlatform/omi) (OMI). This way of creating OEMetaData might result in faulty OEMetaData because the guidelines from the OEMetaDataBuilder are not provided while creating the dataset(s).

**Creating OEMetaData using the OEMetaDataBuilder**
On the OEP there is a tool to create your OEMetaData directly on the platfrom. It is called [OEMetaDataBuilder](https://openenergyplatform.org/dataedit/oemetabuilder/) and can be used when there already exist a table on the OEP for which you want tor create the OEMetaData or as standalone version when no table, for which the OEMetaData dataset is for, exist on the OEP.

## How to use the OEMetaDataBuilder

You can find the [OEMetaDataBuilder](https://openenergyplatform.org/dataedit/oemetabuilder/) on the OEP under [Database](https://openenergyplatform.org/dataedit/schemas) by clicking on `OEMetaBuilder` in the upper right corner. 
![Database](images/Screenshots_OEMetaData/0_Database.png)
Then the OEMetaDataBuilder opens and you can see all the fields. Right next to the headline `Create new Metadata` there are two buttons; With the first one (the pen with `JSON`) you can edit and/or copy the code on which this page is based on in a popup window. With the second (the menu with `properties`) you can choose which fields will be shown or hidden by clicking on them in the list in the popup window. Whenever there is a such a `menu` button next to a headline it enables you to choose which fields will be shown or hidden in the section the hedline belongs to. At the lower right corner three buttons appear to `Submit`, `Cancel` or `Download` your OEMetaData. You can submit your OEMetaData if there already exists a table for your dataset. You can always download the dataset as a JSON-file or cancel the process. Beneath all fields is a description of what values and information may be filled in the field above. For more detailed information please see the [key descriptions](https://github.com/OpenEnergyPlatform/oemetadata/blob/develop/metadata/v160/metadata_key_description.md). 
In order for the OEMetaData dataset to exist on the OEP the ID field must be filled out. You can also give a name, title and description to your OEMetaData. If you create OEMetaData to an already existing table some fields will be filled automatically once you filled in the ID of the table. This makes it easier for you and minimizes the possible errors.
![Anfang](images/Screenshots_OEMetaData/1_Anfang.png)
Under `Subject` you can provide subjects which describe your data. In the `Name`-field please provide the human readable name of the subject, e.g. energy. In the `Path`-field please provide the corresponding URL to the OEO, e.g. https://openenergy-platform.org/ontology/oeo/OEO_00000150. You can add subjects by clicking on the `+` right next to the headline `Subject`. Note: Subjects help other users to find your data and know what it is about. 
![Subject](images/Screenshots_OEMetaData/2_Subject.png)
You can provide language tag(s) for all languages used in your data, inculding the table and the OEMetaData dataset. You can add multiple languages by clicking on the `+` right next to the headline `Language`. Note: Please use the required standard (IETF (BCP47)). 
![Language](images/Screenshots_OEMetaData/3_Language.png)
Additionally to the Subjects you can also provide `Keywords`. These don't have to be defined in the OEO, but can help to describe the content of your data even more precisly. The Keywords make it also possible to filter the tables in the [OEO Database](https://openenergyplatform.org/dataedit/schemas).
![Language](images/Screenshots_OEMetaData/4_Keywords.png)
You can give context to your data, e.g. a research project. This makes your data more comprehendable and traceable for others.
![Context](images/Screenshots_OEMetaData/5_Context_1.png)
![Context](images/Screenshots_OEMetaData/6_Context_2.png)
You can specify the spatial context of your data, e.g. the region in which a research was done.
![Spatial](images/Screenshots_OEMetaData/7_Spatial.png)
You can also define the time of your data. Either a reference date or a time span. 
![Temporal](images/Screenshots_OEMetaData/8_Temporal.png)
You can add a `Timeseries` by clicking on the `+` next to the headline. There you can specify start, end and resolution of the series and information about how the data is implemented in the table. You can add multiple timeseries if neccessarry.
![Timeseries-1](images/Screenshots_OEMetaData/9_Timeseries-1.png)
![Timeseries-2](images/Screenshots_OEMetaData/10_Timeseries-2.png)
You can provide information on your `Sources`, `Licenses`, `Contributers` and `Recourses`. You can add each of them by clicking on the `+` next to the headline.
![Sources-1](images/Screenshots_OEMetaData/11_Sources-1.png)
You can list your sources by providing a human readable title, a description of the source and the path to the source as URL. You can add multiple sources.
![Sources-2](images/Screenshots_OEMetaData/12_Sources-2.png)
You can also provide the license of each source by providing the SPDX identifire, a human readable name as well as a path to the license and further information.
![License-1](images/Screenshots_OEMetaData/13_License-1.png)
![License-2](images/Screenshots_OEMetaData/14_License-2.png)
You may provide information about the contributors of your data. You can add multiple contributors and add details about their contribution.
![Contributors-1](images/Screenshots_OEMetaData/15_Contributors-1.png)
![Contributors-2](images/Screenshots_OEMetaData/16_Contributors-2.png)
You can also annotate the data in your table. This helps to make the data in your table comparable to others because it makes a connection between columns and/or fields to classes in the OEO. If you create OEMetaData for an already existing table, the names of the fields will be filled in autamatically and make the process of annotating more convinient. Note: If you want to annotate without an already on the OEO existing table you must have a basic understandning to datastructure and databases and their relations. In order to do so you must add resource(s) by clicking on the `+` next to the headline `Recourses`. For all resources you must add an unique name. Ich bin etwas verwirrt und weiß nicht, ob ich das folgende richtig beschreibe!
![Resources](images/Screenshots_OEMetaData/17_Resources.png)
You can specify the content of a field in your table by identifying the field, giving its description and data type.
![Field](images/Screenshots_OEMetaData/18_Field-1.png)
The important step of making the connection between the entries in your table and the classes of the ontology happens now by providing the human readable term and the path to the OEO.
![isabout](images/Screenshots_OEMetaData/19_isabout.png)
**Using the OEOextended**
If you want to use an unit which is not in the OEO yet, meaning you can't find it via the implemented search, you can click on the button `Open OEO-extended`. This will open a popup window.
![OEOex](images/Screenshots_OEMetaData/19-1_OEOex.png)
In the OEO-extended (OEOX) it is possible to create an additional unit using units already existing in the OEO. All created units will be reviewed and published on [GitHub](https://github.com/OpenEnergyPlatform/oeo-extended) and uploaded to the OEO. For further information on the OEOX please see [this paper](https://www.utwente.nl/en/eemcs/fois2024/resources/papers/kohler-et-al-oeox-a-post-coordination-extension-for-the-open-energy-ontology.pdf). To create the new unit you can choose your `Numerator(s)` and `Denominator(s). You can respectively choose the unit name from all units implemented in the OEO, e.g. hour, a `Unit Type` according to the power you want to have (linear, squared or cubic) and, if neccessarry, a `Unit Prefix` e.g. mega. Once you entered something in the `Unit Name`-field a fraction will appear showing you the unit you are about to create. It is possible to choose mulitple Numerator and Denominator, which will be each multiplied by each other. When you created the unit you want to use, click `Save`. Then the URI to the new unit in the OEOX will appear. You have to copy and paste it to your browser in order to entry the `Name` and `Path` in the `isAbout`-field. The OEOX is implemented on different fields in the OEMetaDataBuilder to make it easier to create new units. 
![isabout](images/Screenshots_OEMetaData/19-2_Result.png)
You can also provide a class of the OEO for entries of a whole column. By annotating the name of the column with the name and path of the OEO class. You only have to fill in the name fied and select one option from the drop down menu and the path will be filled in automatically. The result would be for example: The column name is 'sc' for 'scenario'. So the annotation name is 'scenario' and the path would be 'http://openenergy-platform.org/ontology/oeo/OEO_00000364'. 
To annotate a single value from a cell as part of the current column, you can annotate the specific value, e.g. column 'Gas' has the value 'co2eq' and should be annotated with 'Carbon Dioxide Equivalent Quantity Value'. The annotation can therefore only be made if values are already known. This value must be entered in the value field. The `Name` & `Path` fields are filled in in the same way as in the is About section. This type of annotation can be very time consuming. If you have many unique values in your column, we recommend creating an additional table that assigns the values and annotations, as this seems to make more sense. Meaning in some specific cases it might be better to manually create your annotations in the OEMetaData and the OEMetaDataBuilder is not the best option.
![ValueReferences](images/Screenshots_OEMetaData/20_ValueReferences.png)
![EndeField](images/Screenshots_OEMetaData/21_EndeField.png)
You can also give a `Primary Key` which uniquely identifies each row of your table.
![PrimaryKey](images/Screenshots_OEMetaData/22_PrimaryKey.png)
You can also refer to an other table by giving a `Foreign Key`.
![ForeignKey](images/Screenshots_OEMetaData/23_ForeignKeys.png)
If you want to reference another table  you can provide the foreign table in the `Resource`-field and then specifying which column should be referencced in the `Field` below.
![References](images/Screenshots_OEMetaData/24_References.png)
At the end you can provide an explanation of your data in terms defined by the OEO and a URI via the DBpedia Databus.
![Ende](images/Screenshots_OEMetaData/25_Ende.png)



## About this tutorial

:oep-logo-sirop:

- Author: Vismaya Jochem
- Copyright: Reiner Lemoine Institut
- License: [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/deed.en)
- Attribution: Open Energy Academy - OEMetaData Tutorial © [Reiner Lemoine Institut](https://reiner-lemoine-institut.de/)
- Last update: :oep-auto-lastupdate:
