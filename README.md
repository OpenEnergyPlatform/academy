<a href="https://openenergy-platform.org/"><img align="right" width="200" height="200" src="https://avatars2.githubusercontent.com/u/37101913?s=400&u=9b593cfdb6048a05ea6e72d333169a65e7c922be&v=4" alt="OpenEnergyPlatform"></a>

# OpenEnergyPlatform - Tutorial

Tutorials, manuals and example code for use with the OEP

## License / Copyright

This repository is licensed under [GNU Affero General Public License v3.0 (AGPL-3.0)](https://www.gnu.org/licenses/agpl-3.0.en.html)

## Installation

### OEP API

Most tutorials in this repository are [jupyter notebooks](https://jupyter.org/). If you have python and pip running on your system, installation is a straight forward.

    ```
    pip install jupyterlab
    ```
Official installation instructions are available [here](https://jupyterlab.readthedocs.io/en/stable/getting_started/installation.html#pip).

To open a jupyter notebbok, navigate to its containing repository and start jupyterlab with

    ```
    jupyter notebook
    ```

A browser tab will open that let's you select all notebooks within the directory. You will see the content of the notebook and also be able to run the commands it contains. You may also adapt the commands and play with the notebook.

# OEP website tutorial integration

Tutorials that are created, stored and maintained in this reposetory (mainly as jupyter notebooks) are uploaded to the OEP Website with
every new [OEP release](https://github.com/OpenEnergyPlatform/oeplatform/blob/develop/RELEASE_PROCEDURE.md#release-cycle) (if tutorials are missing on the OEP website please write an issue [here](https://github.com/OpenEnergyPlatform/oeplatform/issues/new))

## Tutorial data model

A data model describes an object and its attributes. Therefore we use a generic tutorial object that is also used on the OEP website internally. This approach supports the maintainability of OEP tutorials in general, because it is also possible to create text- or video-based tutorials via the OEP website tutorials app/page. Since all tutorial variations are based on the same data model we make sure to display similar/matching data on the OEP website. 

We provide some ressources that document the OEP tutorials data model as [template](template/tutorial_metadata_oep_example.json) / [human readable example](template/tutorial_metadata_human_readable_names_example.json) / [production example](template/tutorial_metadata_oep_example.json). The human readable example provides possible human readable values for each tutorial attribute for better understanding (learning/first time hands on). We want the user to understand what information will be displayed on the OEP Website. 

**Use this exampe to learn how to describe a new tutorial**
The [production example](template/tutorial_metadata_oep_example.json) shows how to connect a new tutorial to the oep as the information provided here will be displaied on the OEP website. The difference to the human readable example is that we use numeric/text identifier to reference a specif (human readable) value as this prevents migration issues with the internal OEP (django) database if the data model is to be extended. Also the data model is a technical component and not intended to be used by a common non-technical user. 

## Prepare a tutorial for the OEP Upload/Integration

Step by Step Guide:
1. Create a tutorial with a name that describes the content. (Will be displayed on the OEP)
2. Copy the [template](template/tutorial_metadata_template.json) .json file, add to the same folder as the new tutorial.
3. Update the name of the .json with the name of the new tutorial file. 
4. Make sure to keep the .json as file format (tutorial_name.json)
5. Update all values for each attribute/key ("attribute/key":"value") in the .json file. Make sure to keep the general JSON syntax. Also, make sure to use [available identifiers](template/tutorial_metadata_oep_example.json). Some fields like `name:""` do not require a specific intentifier you are free to select the text here. 
6. Push all changes and files to the git branch you used to create the tutorial.
7. Create a new pull request in this repository and tag a OEP-developer to review the changes.
8. It will take some time (1 week up to 1 month) until the changes occur on the OEP website.