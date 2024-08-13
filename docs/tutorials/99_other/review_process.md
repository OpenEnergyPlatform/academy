# Tutorial - Open Peer Review for OEMetadata

<!-- keep img below title and without align="left"  -->
<img src="https://raw.githubusercontent.com/OpenEnergyPlatform/academy/develop/docs/data/img/OEP_logo_2_no_text.svg" alt="OpenEnergy Platform" height="75" width="75" />

## Learnings

This tutorials will enable you to:

- Workflow of the Review Process
	- Initiation
	- Review
	- Completion

## Requirements

- OEP Account 
- table or dataset uploaded to the [OpenEnergyPlatform](https://openenergyplatform.org/) (OEP)
- metadata for set table must be available

 
## Feedback 
 
You can provide feedback on this tutorial here: https://github.com/OpenEnergyPlatform/academy/issues/189

## Introduction

This course will teach you step-by-step how the open peer review process from the OEP works. For a more general overview of the peer review process have a look at the course [09 - Open Peer Review](https://openenergyplatform.github.io/academy/courses/09_peer_review/).

## Metadata Upload

The contributer (metadata owner) [uploads metadata](https://openenergyplatform.org/dataedit/wizard/) to the [OpenEnergyPlatform](https://openenergyplatform.org/) (OEP). If you are unsure how to do that, have a look at [this tutorial](https://openenergyplatform.github.io/academy/tutorials/99_other/beginners_guide/#22-create-metadata). Make sure that the metadata include a license and a possible embargo period of 6 months or 1 year. The metadata is automatically uploaded to [modal_draft](https://openenergyplatform.org/dataedit/view/model_draft). Note that a prerequisite to upload metadata is an existing table.


## Initiation of the Review Process

Once the metadata are publicly accessible in the [modal_draft](https://openenergyplatform.org/dataedit/view/model_draft) section, anyone can start the review process by going to the 'Open Peer Review' View (next to 'Meta information') and clicking on 'Start Open Peer Review' at the end of the page. (Note that the metadata owner cannot review their own metadata.)
The review process is exclusive; menanig once the review process has started, no one else can initiate the review process for the same metadata. However, after a review is finished, a new review can be started.

## Review Process

The reviewer who initiated the process must review all fields except empty fields ('None'), contributor fields and technical resource metadata fields. The metadata is devided into sections; General, Spatial & temporal, Source, License and Summary. The `Summary` gives an overview over all fields and shows for which fields a review is missing. When selected a division, while reviewing the reviewer sees on the left hand side the list with all fields that need reviewing, on the right hand side a window opens according to the field which is being reviewed. There the definition of the field and an correct example is given, as well as the badge. Below the review options are given; accept the field, suggest a change, or reject it and provide an alternative. To navigate one can click on the fields on the left hand side or use the small arrows in the window on the right hand side. It is possible to save your progress with the button in the rigth upper corner `Save Progress`.

Once the review is completed, it can be submitted in the right upper corner with `Submit`. The review is then transmitted from the reviewer back to the contributer. The reviewer can only forward their review to the contributor once they have evaluated all non-empty fields i.e. accepted, suggested or rejected them. (See also: [How do you review open data?](https://openenergyplatform.github.io/academy/courses/09_peer_review/#how-do-you-review-open-data))

## Handling Review Suggestions

If the reviewer has suggestions for certain fields, these are sent to the contributor. In the contributor's profile, under the Peer Review section, the review with the reviewer’s suggestions can be seen. The contributor can then accept or reject the reviewer’s suggestions, proposing alternatives if necessary. After the contributor has accepted/rejected all suggested fields, they send it back to the reviewer for verification. This process continues until all fields are mutually accepted.

## Completion of the Review Process

When the reviewer agrees with all fields during the review process, after accepting all fields, they can choose a [badge](https://openenergyplatform.github.io/academy/courses/09_peer_review/#how-to-evaluate-and-present-the-review-what-are-badges) and complete the review.

## Post-Review Metadata Management

After the review process is completed, the table & metadata owner can move the metadata from the model_draft to one of the 12 other topics. An embargo period of 6 months or 1 year may be applied.

## About this tutorial

:oep-logo-sirop:

- Author: Christian Winger
- Copyright: [Öko-Institut](https://www.oeko.de) (2024)
- License: [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/deed.en)
- Attribution: Öko-Institut (2024): OEP Client Tutorial 03 - Download data from the Open Energy Platform using the OEP Client in the command line
- Last update: :oep-auto-lastupdate:
