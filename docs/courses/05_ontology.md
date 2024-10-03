# 05 - The Open Energy Ontology (OEO)
Learn about how to become an OEO developer and which skills are helpful to join in on developing the OEO. 
You can provide feedback to this course on GitHub: [https://github.com/OpenEnergyPlatform/academy/issues/167](https://github.com/OpenEnergyPlatform/academy/issues/167)

## What is the OEO?
The [project's README](https://github.com/OpenEnergyPlatform/ontology/blob/dev/README.md) will give you a good idea what the OEO is, what it is used for, how to install it and who to contact. It will also point you to the necissary information you need to get started - including this very course.

## How to become an OEO developer

### For whom is this training and what can you learn?

:oep-icon-info: **This course is aimed at (energy system) researchers who want to**

- Understand the OEO design choices,
- Get to know the OEO development processes,
- Participate in ontology development and
- Collaborate developing a powerful open-source tool to enhance data management in the energy domain under the [FAIR principles (website currently unavailable)](https://www.go-fair.org/fair-principles/). FAIR is an acronym for findability, accessibility, interoperability, and reusability and describe a good standard for data
- Understand how to collaborate using Git and GitHub

:oep-icon-info: **After reading the sections of this module, you will know**

- Which skills you need for OEO development,
- How the OEO development process works and
- How to participate in OEO development.

### What are prerequisit skills for ontology development?

The following skills will help you understand the OEO better and enable you to participate in its development:

1. BFO basics
2. Protégé and OWL basics
3. GitHub and git
4. OEO specific knowledge

#### 1. BFO basics

The OEO uses the formal structure and design principles of the Basic Formal Ontology (BFO).
The more familiar you are with BFO, the better you will be able to contribute to the OEO development process. 

:oep-icon-text: For a brief overview of the BFO hierarchy you can read the [OEO wiki article](https://github.com/OpenEnergyPlatform/ontology/wiki/BFO-Upper-Ontology-Classes). This however is a very condensed version. 

:oep-icon-text: The standard literature on BFO is [_Arp, Smith and Spear (2015): Building Ontologies with Basic Formal Ontology_](https://direct.mit.edu/books/book/4044/Building-Ontologies-with-Basic-Formal-Ontology). If you decide to become an OEO developer, you should read this book. It is also a helpful work of reference. It has to be noted though that the book is not open access and has to be bought.
To understand the BFO concepts you mostly need chapters 5 and 6. To work on an ontology yourself chapters 3, 4 and 7 are especially helpful.

:oep-icon-video: This video tutorial (78 min) provides an overview and introduction to BFO.
[Building Ontologies with Basic Formal Ontology](https://www.youtube.com/watch?v=joC4NZgLtqA). It is the recording of a presentation held by Barry Smith of the BFO and will inform you how the BFO came to be, what some of the most important classes are and how they are used. It does however not decribe all the classes and may be more useful if you already gained a basic understanding of the concepts from the previous texts. 

:oep-icon-video: For a more throughout discussion of all the BFO concepts by Barry Smith you may check out the whole [tutorial playlist](https://youtube.com/playlist?list=PLyngZgIl3WTj6tWcypTLpCnYXu6o93kD4&feature=shared) (110 min).


The [BFO code](https://github.com/BFO-ontology/BFO) is hosted on GitHub where the [wiki page](https://github.com/BFO-ontology/BFO/wiki) also provides further publications and information on BFO. This however goes into great detail, documenting changes across time and releases and is **not** needed when you first start working with the OEO. You can however download the BFO classes and take a look at them in Protége to familiarize yourself with them.

#### 2. Protégé and OWL basics

The OEO is based on the Web Ontology Language OWL and uses Manchester Syntax. Protégé is the tool used for OEO development.

:oep-icon-text: To become familiar with Protégé and OWL, we recommend studying the [Pizza tutorial](https://www.michaeldebellis.com/post/new-protege-pizza-tutorial) by Micheal DeBellis, especially chapter 1 to 7.
For the tutorial, as well as OEO development, you will have to install [Protégé](https://protege.stanford.edu/) on your computer.

:oep-icon-video: For a full introduction to OWL you can check out [part 4.2](https://www.youtube.com/watch?v=x7GtYNEWIKE&list=PLoOmvuyo5UAcBXlhTti7kzetSsi1PpJGR&index=38), [part 4.3](https://www.youtube.com/watch?v=CXw-P7H2rOQ&list=PLoOmvuyo5UAcBXlhTti7kzetSsi1PpJGR&index=40), [part 4.4](https://www.youtube.com/watch?v=u8AXayzKuSg&list=PLoOmvuyo5UAcBXlhTti7kzetSsi1PpJGR&index=41), [part 4.5](https://www.youtube.com/watch?v=z95PYaOxPMs&list=PLoOmvuyo5UAcBXlhTti7kzetSsi1PpJGR&index=42) and [part 4.6](https://www.youtube.com/watch?v=lFDqMlogssI&list=PLoOmvuyo5UAcBXlhTti7kzetSsi1PpJGR&index=43) of this tutorial course. This is more than what you will need for getting started but if you want to look further into ontologys it will be helpful.

You can find the OWL2 and Manchester Syntax documentation [here](https://www.w3.org/TR/owl2-manchester-syntax/) for further reading. This is helpful for looking things up and not the be read from start to finish.

#### 3. GitHub and git basics

The documentation of the OEO development, its discussion and version control all take place on GitHub. Therefore, it is necessary to be familiar with versioning control via [git](https://git-scm.com/) and GitHub as a platform.
- GitHub provides a helpful guide for the [first steps with your GitHub account](https://docs.github.com/de/get-started/onboarding/getting-started-with-your-github-account).
- There, you can also learn, how to [set up git](https://docs.github.com/en/get-started/quickstart/set-up-git).
- An introductory tutorial on how to use git is available [here](https://githowto.com/).
- You will also have to get familiar with the workflow used on GitHub. Before you start working on anything, please read [CONTRIBUTING.md](https://github.com/OpenEnergyPlatform/ontology/blob/dev/CONTRIBUTING.md) carefully. 
- You can also check out the [wiki](https://github.com/OpenEnergyPlatform/ontology/wiki/Workflow) for more detailed information on the workflow for different tasks. 


### Which OEO specific knowledge do I need?

:oep-icon-text: [Introducing the Open Energy Ontology: Enhancing data interpretation and interfacing in energy systems analysis](https://www.sciencedirect.com/science/article/pii/S2666546821000288)
We published an introductory paper about the OEO in the journal Energy and AI in 2021. It provides a good overview over the domain, the structure and the workflow of OEO development. This talks about why the OEO was developed and what benefits are expected.

:oep-icon-text: [OEO Wiki](https://github.com/OpenEnergyPlatform/ontology/wiki/)
The OEO wiki provides details on how best practice principles of ontology development are applied to OEO development. <br>
For general information the most useful wiki pages to a newcomer are:
- [How to Participate](https://github.com/OpenEnergyPlatform/ontology/wiki/Welcome!-How-to-participate)
- [Best Practice Principles](https://github.com/OpenEnergyPlatform/ontology/wiki/Best-Practice-Principles) including subsections
- [BFO Upper Ontology](https://github.com/OpenEnergyPlatform/ontology/wiki/BFO-Upper-Ontology-Classes) including subsections
- [Explaination on Mass Nouns](https://github.com/OpenEnergyPlatform/ontology/wiki/Explanation-on-mass-nouns)
- [Handeling Ambiguous Terms](https://github.com/OpenEnergyPlatform/ontology/wiki/Handling-ambiguous-terms)
- [Use Protégé to Change the Ontology](https://github.com/OpenEnergyPlatform/ontology/wiki/How-to-use-prot%C3%A9g%C3%A9-to-change-the-ontology)
- [Term Tracker Annotation](https://github.com/OpenEnergyPlatform/ontology/wiki/Term-Tracker-Annotation)


:oep-icon-text: [The representation of energy, energy carriers and
fuels in the Open Energy Ontology](http://star.informatik.rwth-aachen.de/Publications/CEUR-WS/Vol-3249/paper1-Ensusto.pdf)
Energy is a complex physical phenomenon and challenging to describe ontologically. We published another OEO specific paper that describes how we decided to represent energy and energy carriers in the OEO.

### I have read everything - how can I join the developer team now?

1. Get in touch with us! You can use the [contact form on the OEP](https://openenergyplatform.org/contact/) to establish initial contact, and we will come back to you. 
2. We always welcome new members to the development team in our regular oeo-dev-meetings, where we discuss organisational things and content related issues.
3. To participate in the OEO development and discussion process on GitHub, you will need to become part of the [OpenEnergyFamily organisation](https://github.com/OpenEnergyPlatform).
4. Afterwards, you can follow all instructions and explanations of the general workflow in the [CONTRIBUTING.md](https://github.com/OpenEnergyPlatform/ontology/blob/dev/CONTRIBUTING.md) on GitHub. Also check out the wiki to [set up your work environment](https://github.com/OpenEnergyPlatform/ontology/wiki/Setup-your-work-environment-and-get-involved).
5. In all discussions, whether in an online meeting or on GitHub, we follow our [Code of Conduct](https://github.com/OpenEnergyPlatform/ontology/blob/dev/CODE_OF_CONDUCT.md).

---

## About this course

:oep-logo-sirop:

- Authors: Mirjam Stappel, Christian Hofmann, Hannah Förster, Christian Winger, Ulf Mueller
- Copyright: Otto-von-Guericke-Universität, Fraunhofer IEE, Öko-Institut, Reiner Lemoine Institut (2023)
- Contact: SIROP@iee.fraunhofer.de.
- License: [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/deed.en)
- Attribution: Fraunhofer IEE, Reiner Lemoine Institut, Otto-von-Guericke-Universität, Öko-Institut (2023): Contribute to the OEO.
- Last update: :oep-auto-lastupdate:
- You can provide feedback to this course on GitHub: [https://github.com/OpenEnergyPlatform/academy/issues/167](https://github.com/OpenEnergyPlatform/academy/issues/167)

---
