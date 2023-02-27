# 06 - How to define a term in the OEO

## 1. Use domain terminology.
> A domain is a delineated portion of reality corresponding to a scientific discipline such as cell biology or electron microscopy, or to an area of knowledge or interest such as the Great War or stamp collecting or construction permits. Not everything that is part of an entity within a given domain is also part of that domain. Thus every human being has molecules as parts, but molecules do not form part of the domain of, for example, human geography, or human rights law."

(2015, Arp et. al., Building Ontologies with Basic Formal Ontology, MIT Press)

The OEO is an ontology of the energy system modelling domain. Regarding the selection of terms, stay as close as possible to the usage of actual domain experts. The goal is to achieve maximal consensus within the relevant discipline. 

## 2. Equivocality of terminology
In areas of disciplinary overlap there may occur inconsistencies of terminological usage. In this case, keep track of synonyms to terms in the domain ontology OEO. We use `IAO: alternative term` as an annotation property for synonyms. See also [Handling ambiguous terms](https://github.com/OpenEnergyPlatform/ontology/wiki/Handling-ambiguous-terms).

## 3. Do not reinvent the wheel. 
There are already plenty of terminologies and ontologies which might be useful for the OEO. Employ them. A list of ontologies currently connected to the OEO can be found [here](https://github.com/OpenEnergyPlatform/ontology/wiki/Use-of-external-ontologies).

## 4. Use singular nouns.
* Right: _An energy transformation unit **is** an artificial object that transforms, changes or transfers a certain type of energy._
* Wrong: ~_**Energy transformation units **are** artificial objects that transforms, changes or transfers a certain type of energy._~

## 5. Avoid acronyms as labels.

The class labels should contain real words, not acronyms. Acronyms could be added in brackets as parts of the definition and as alternative labels.
:oep-icon-code: Example:
```
Class: OEO_00000374

    Annotations:
        rdfs:label "superconducting magnetic energy storage",
        definition "A superconducting magnetic energy storage (SMES) is an energy storage object that stores electrical energy in the magnetic field of a superconducting magnet.",
        'alternative label' "SMES"

```

## 6. Ensure univocity of terms and relational expressions.

Chose labels and definitions that are univocal. If a domain-specific concept might be ambiguous, try to find a different term. This term might be longer and sound more technical. Ambiguous terms should be included in the OEO only as alternative label.

Example: The OEO differentiates between a `wind rotor` and a class `wind energy converting units`. Both classes have the additional alternative label `wind turbine`.

For detailled information see [Handling ambiguous terms](https://github.com/OpenEnergyPlatform/ontology/wiki/Handling-ambiguous-terms).

## 7. What about mass nouns?
Mass nouns are terms such as `water`,  `gas`,  `fuel`, ... That means, it is possible to ask _how much_ water there is, but not without asking e.g. _how many litres_ of water there are. 

Mass nouns can be part of the OEO, when their definition makes clear, that the term refers to "a portion of" water, gas, air, etc. They are classified as subclasses of the `portion of matter` class which is a `BFO: object aggregate`. 

A more extensive explanation on mass nouns in the OEO can be found [here](https://github.com/OpenEnergyPlatform/ontology/wiki/Explanation-on-mass-nouns).

## 8. Focus on the general.
General terms are universals and defined classes. Particulars, which are instances of universals, are to be avoided. 

## 9. Use British English.
For terms that have different spellings in British and American English, such as "organisation" / "organization", use the British variant as the label and add the American variant as an `IAO: alternative label`. See also [this issue](https://github.com/OpenEnergyPlatform/ontology/issues/771).
This is a list

## Test 
* one
* two

:oep-icon-info:
:oep-icon-text:
:oep-icon-video:
:oep-icon-code:
