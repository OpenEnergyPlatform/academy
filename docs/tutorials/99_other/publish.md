# Tutorial - How to Publish data and metadata on the OEP

<!-- keep img below title and without align="left"  -->
<img src="https://raw.githubusercontent.com/OpenEnergyPlatform/academy/develop/docs/data/img/OEP_logo_2_no_text.svg" alt="OpenEnergy Platform" height="75" width="75" />

## Learnings

This tutorials will enable you to:

- Publish your data and metadata 
	- with an embargo
	- to a topic

## Requirements

- OEP Account
- a table or dataset with metadata uploaded to the [OpenEnergyPlatform](https://openenergyplatform.org/) (OEP)


## Introduction

This tutorial will teach you step-by-step how to publish your data and metadata using the OEP wizard. If you want to use the API, please have a look at this tutorial. For more general information und the piblishing process and the empbargo period, see [this course](https://openenergyplatform.github.io/academy/courses/04_upload/). Comment: Links will be implemented once they are avalaible.


## Choosing a table to be published
If you want to publish a table (including [data and] metadata) you have to go to your [profile page](https://openenergyplatform.org/user/profile/959/settings) on the OEP.
Now select the tab [`Tables`](https://openenergyplatform.org/user/profile/959/tables). Listed are data tables that you have uploaded or where you got group permissions assinged to; First are listed all tables you have already published, if you have not published any tables yet, this field will show 'You have never published a table.'.
Beneath are listed all of your tables in the [model draft](https://openenergyplatform.org/dataedit/view/model_draft) section. 
From this tables you can select the table you want to publish. Note: Only tables with an valid id and license in their metadata can be published on the OEP.

## Choosing an embargo and a topic
Once you selected the table you want to publish, a pop-up field `Publish Table` will open. Next to the fields is an `i` icon giving more information if you hover your mouse over it.
First you can apply an embargo; in a drop down menu you can select between none, and a 6 months or 1 year embargo period. 
Note: If you selct `None` there will be no embargo periode applied, even if you selected one while uploading the table.
Second you have to `Select data topic` from one of the 12 available topics; scenario, boundaries, climate, demand, economy, enviromente, grid, openstreetmap, policy, refernce, society and supply.
Note: You can only choose one data topic. With tags it is possible to mark the content of you data even more precisely.

## Finishing the process
Once you click `Confirm` in the pop-up window the table will be moved from the model draft to the data topic you selected. 
Now it can be seen in the [Database](https://openenergyplatform.org/dataedit/schemas) under the selcted topic and on the profile page it is now visible as [Published datatables](https://openenergyplatform.org/user/profile/959/tables).



## Feedback

You can provide feedback on this tutorial here: https://github.com/OpenEnergyPlatform/academy/issues/189

## About this tutorial

:oep-logo-sirop:

- Author: Vismaya Jochem
- Copyright: Reiner Lemoine Institut
- License: [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/deed.en)
- Attribution: Open Energy Academy - OEMetaData Tutorial © [Reiner Lemoine Institut](https://reiner-lemoine-institut.de/)
- Last update: :oep-auto-lastupdate:
