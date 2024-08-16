# 08 - Licensing

You can provide feedback to this course on GitHub: [https://github.com/OpenEnergyPlatform/academy/issues/188](https://github.com/OpenEnergyPlatform/academy/issues/188)

## For whom is this training and what can you learn?

:oep-icon-info: **This course is aimed at researchers, who want to**

- publish data and need to choose a license
- download and use data with an open license

:oep-icon-info: **After reading the sections of this training course you will**

- understand the basic concept of copyright and licenses
- feel confident about using licensed materials
- know how to apply proper attributions to open data

## Introduction

It is crucial to license data when conducting research.
Digital information is governed by copyright laws, and without a clear context,
it is uncertain whether others can use your data.
By providing a license, you automate the process of seeking permission,
which benefits both the giver and the receiver.
However, it is important to note that in some countries,
such as Germany, it is not possible to simply waive one's copyright.
A license offers legal clarity for data usage, ensuring that both parties
are protected.
When selecting a license, it is advisable to choose an established one that
addresses questionable edge cases and offers unambiguous terms.

## Open Data

Data that lack a suitable open license cannot be considered as open.<br>
The [Open Knowledge Foundation](https://okfn.org/) defines
[open data](https://opendefinition.org/) and content as following.<br>

!!! note "The Open Definition"
“Open data and content can be freely used, modified, and shared by anyone for any purpose."

This means that open data licenses grant users the four fundamental freedoms
originally defined for [free software](https://en.wikipedia.org/wiki/The_Free_Software_Definition#The_Four_Essential_Freedoms_of_Free_Software).

- The freedom to run the program for any purpose.
- The freedom to study how the program works and modify it as needed, which requires access to the source code.
- The freedom to distribute copies to others and help them.
- The freedom to distribute modified copies to others.

These freedoms can also be applied to open data, allowing users to freely use, analyse, share, and modify the data.
The main difference between open data licenses and free or open-source software licenses lies in the obligations that must be met to obtain these rights.

There are lists of already established open source licenses that ensure the four freedoms, such as the list provided by the Open Source Initiative (OSI).
However, it is essential to understand the specific characteristics of each license to determine which one is best suited for your data.

:oep-icon-text: [Open Data Licenses](../tutorials/99_other/tutorial_open-data-licenses.ipynb):

Learn the different types of Open Data licenses and where to use them.

## Application in OEMetadata

The [Open Energy Metadata](https://github.com/OpenEnergyPlatform/oemetadata)
Standard is based on the [Frictionless Data Package Specifications](https://frictionlessdata.io/).
The license for a resource (table or datapackage) is specified by three fields:

- **name**: An identifier of the [SPDX License List](https://spdx.org/licenses/)
- **path**: A URL or path (string, that is a fully qualified HTTP address, or a relative POSIX path)
- **title**: A human-readable title of the license

More details on applying licenses can be found in the [Frictionless Data blog post](https://frictionlessdata.io/blog/2018/03/27/applying-licenses/).<br>
Additionally, the metadata include two useful keys that simplify reuse and legal understanding:

- **instruction**: A short description of rights and restrictions. The use of [tl;drLegal](<https://tldrlegal.com/license/odc-open-database-license-(odbl)>) is recommended. For Example: "You are free to share and change, but you must attribute, and share derivations under the same license. See for further information."
- **attribution**: The copyright owner of the data. If attribution licenses are used, that name must be acknowledged. For Example: "© Reiner Lemoine Institut"

The license is included as an array (list) by default. This allows for dual licensing.

:oep-icon-info: [OEMetadata keys with a description and example](https://github.com/OpenEnergyPlatform/oemetadata/blob/master/metadata/latest/metadata_key_description.md#license-keys)

## Licensing in practice

In practice, licensing plays a crucial role in the use of open data, ensuring
proper attribution, legal compliance, and enabling the freedom to share and
modify data.
The OEMetadata standard recognises the significance of licenses in open data
and provides a structured approach for documenting license information.

Research and documentation of license information within the OEMetadata
standard offer several benefits. Firstly, it facilitates transparency by
clearly stating the permissions and restrictions associated with the data.
By specifying the license name, path, and title, users can easily understand
the terms under which the data can be used, modified, and distributed.

### Using Open Data

Within the OEMetadata string, it is essential to gather and store comprehensive
license information alongside the data.
Additionally, it is recommended to include an additional entry in the
contributions section to document the provenance of the data,
ensuring traceability and transparency.
When republishing or visualizing the data, it is crucial to create a proper
attribution string based on the provided information.
Typically, the attribution string should contain the following elements:

- **Title**: Include the title or name of the dataset, providing a clear and concise description of its content.
- **Source**: Specify the source from which the data originated, indicating the repository, website, or platform where it was obtained. A link to the source of the data, can be a URL or DOI.
- **Author / Copyright holder**: Acknowledge the individual or organisation that holds the copyright or is the primary creator of the data. The information from **attribution**.
- **Author link**: A link to the homepage.
- **License**: Clearly state the license under which the data is released, ensuring compliance with its terms and conditions. Name and identifier of the license.
- **License link**: A link to the license text.

A suitable format is:

**"Title"** [Source] © **Author** [Author link] | **License** [License link]

For example:

"[MaStR - Marktstammdatenregister](https://www.marktstammdatenregister.de/MaStR)" © [Bundesnetzagentur für Elektrizität,
Gas, Telekommunikation, Post und Eisenbahnen](https://www.bundesnetzagentur.de/) | [Datenlizenz Deutschland – Namensnennung – Version 2.0 (DL-DE-BY-2.0)](https://www.govdata.de/dl-de/by-2-0)

### Using protected data and data without licenses

The use of non-open data has been a topic of increasing importance.
While open data initiatives have gained momentum globally, there remains a
significant amount of data that is freely accessible on the internet or
published somewhere else.
Non-open data refers to datasets that are publicly available but have
restrictions on usage, or require specific permissions for access.

Non-open data sources can include government databases, proprietary datasets
held by private companies, academic research data, and sensitive information
such as personal or confidential data.
These datasets often contain valuable information that can contribute to
research, analysis, policy-making, and decision-making processes.
The utilisation of non-open data presents unique challenges and considerations.
Access to these datasets may be limited due to legal, privacy, or commercial reasons.
Researchers and data practitioners need to navigate licensing agreements,
contact the copyright holders, negotiate data-sharing agreements, and comply
with data protection regulations to gain access to non-open data.

In Germany, the [Act on Copyright and Related Rights / Gesetz über Urheberrecht und verwandte Schutzrechte (Urheberrechtsgesetz)](https://www.gesetze-im-internet.de/englisch_urhg/englisch_urhg.html) contains the
paragraph [60c Scientific research (Copyright Act, § 60c Scientific Research)](https://www.gesetze-im-internet.de/englisch_urhg/englisch_urhg.html#p0479) that
provides provisions specifically for non-commercial scientific research.
According to this law:

- Up to 15 percent of a work may be reproduced, distributed, and made publicly accessible for the purpose of non-commercial scientific research. This can be done for a specific group of individuals conducting their own scientific research, as well as for individual third parties for the purpose of assessing the quality of scientific research.
- Up to 75 percent of a work may be reproduced for one's own scientific research.

Regarding non-open data, the application of § 60c depends on the specific
circumstances and licensing agreements associated with the non-open datasets.
Researchers and data practitioners must ensure that they comply with copyright
laws, licensing agreements, and any applicable data protection regulations when
accessing and using non-open data for scientific research.
The provisions may provide some flexibility in reproducing and utilising
copyrighted materials within the context of non-commercial scientific research,
but the specific permissions and limitations for non-open data should be
carefully reviewed and adhered to.

In conclusion, while open data initiatives have made significant progress,
the use of non-open data remains a reality. Overcoming the challenges
associated with non-open data requires collaboration, adherence to ethical and
legal standards, and a concerted effort to promote transparency and data
sharing.
By addressing these issues, researchers and data practitioners can harness
the full potential of both open and non-open data sources to drive innovation,
enhance decision-making, and foster societal progress.

### Select and apply a license for data

When selecting a suitable open license for data, several considerations come into play.
Legal implications and jurisdiction-specific regulations should also be taken into account.
Different countries may have their own legal frameworks governing open data licenses, so it is important to ensure compliance with relevant laws.
It is important to choose a license that aligns with the principles of open data, promoting accessibility, reuse, and collaboration.
The choice of license should reflect the intended type of material (software, data, artwork) and the desired obligations, if any, on data usage.
Some licenses may require attribution, ensuring proper credit is given to the original data creators and copyright holder.
Some licenses require that you choose the exact same license for aggregated or modified data.
It can be described as reciprocal, hereditary or (negatively connotated) virulent.

|              | Public Domain                                                                               | Attribution                                                                                              | Share-Alike                                                                                                                                                  |
| ------------ | ------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **Openness** | As open as possible, but others can create non-open derivatives of it.                      | Open and suitable for academic work.                                                                     | Open and will be open forever.                                                                                                                               |
| **Use-Case** | Data for which no attribution to authors is required, e.g. "helper tables" for conversions. | Data for which naming of the authors and/or copyright holders is required, e.g. "input and result data". | Data where naming of the authors is required and all further updates must be open as well, e.g. "manual collection of technical parameters from factsheets". |
| **Example**  | Creative Commons Zero v1.0 Universal (CC0)                                                  | Creative Commons Attribution 4.0 International (CC-BY-4.0)                                               | ODC Open Database License v1.0 (ODbL-1.0)                                                                                                                    |

Once a license is chosen, it is essential to properly apply and document the license information.
This can be done by including the license statement and relevant details within the data documentation and metadata.
The license information should clearly state the terms and conditions under which the data is made available, including any requirements for attribution, modifications, and redistribution.

:oep-icon-text: [Checklist for working with open data](https://openenergyplatform.github.io/academy/tutorials/other/1_checklist/)

## Licence compatibility

Ensuring licence compatibility between various different licences is usually
a challenging manual task.
The auditor should have a sound understanding of legal concepts and its
subtle nuances.

### DALICC

The project [DALICC ("Data Licenses Clearance Center")](https://docs.dalicc.net/)
is an EU-funded research project aimed at developing a platform and tools to
support the identification, clearance, and management of data licenses.
The project's goal is to address the challenges surrounding data licensing in
order to foster data interoperability, reuse, and sharing while ensuring legal
compliance.

The project focuses on developing innovative technologies and methodologies to
automate and streamline the process of understanding and managing data licenses.
It aims to provide a comprehensive framework for organisations and individuals
to identify the licenses applicable to their data, analyse the rights and
restrictions associated with those licenses, and manage compliance accordingly.

The platform integrates legal knowledge and natural language processing
techniques to interpret and analyse license texts, allowing users to obtain a
better understanding of the rights and obligations associated with data licenses.
It also provides functionalities for assessing license compatibility,
automating clearance processes, and facilitating data sharing within legal boundaries.

Overall, the DALICC project aims to address the complex landscape of data
licensing by providing tools and solutions that simplify the identification,
clearance, and management of licenses, promoting data interoperability, and
facilitating legal compliance in data-driven environments.

The first component makes a reference to the
[ODRL information model](https://www.w3.org/TR/odrl-model/) to express
permissions, duties and prohibitions stated in a license. It uses vocabularies
from ODRL, CCRel and particular extensions to describe licenses for machine
processing in a legally valid manner. In this respect a license can be
understood as a policy that defines specific actions as permissions, duties or
prohibitions.

The second component is the so-called Dependency Graph.
This graph expresses the valid relationships between various actions defined in
a license.
The graph currently consists of three basic relationships: “included in”,
“implies” and “contradicts”.
The graph is used to check the consistency of the license itself and to detect
potential conflicts arising from contradicting actions defined in two or more
licenses.

:oep-icon-code: [DALICC API - compatibilitycheck](https://api.dalicc.net/docs#/compatibilitycheck/compatibility_compatibilitycheck__post)

## Supplementary material and further readings

### FOSTER Portal

The [FOSTER portal](https://www.fosteropenscience.eu/) is an e-learning platform
that brings together the best training resources addressed to those who need to know more about Open Science,
or need to develop strategies and skills for implementing Open Science practices
in their daily workflows.
Here you will find a growing collection of training materials.
Many different users - from early-career researchers, to data managers,
librarians, research administrators, and graduate schools - can benefit from
the portal.
In order to meet their needs, the existing materials will be extended from
basic to more advanced-level resources. In addition, discipline-specific
resources will be created.

:oep-icon-info: [FORSTER Course: Open Licensing](https://www.fosteropenscience.eu/learning/open-licensing)

---

## About this course

:oep-logo-sirop:

- Authors: Ludwig Hülk, Christian Hofmann
- Copyright: [Reiner Lemoine Institut](https://reiner-lemoine-institut.de/)
- Contact:
- License: [CC-BY-4.0](https://creativecommons.org/licenses/by/4.0/deed.en)
- Attribution: Open Energy Academy - Licensing Course © [Reiner Lemoine Institut](https://reiner-lemoine-institut.de/)
- You can provide feedback to this course on GitHub: [https://github.com/OpenEnergyPlatform/academy/issues/188](https://github.com/OpenEnergyPlatform/academy/issues/188)
