#### Question 1
1.1.1:

- `rdf:Property` is a class used to describe properties.
- `owl:ObjectProperty` is a specific attribute Its range is Object.
- `owl:DatatypeProperty` is the property of the Literal.

#### Question 2
2.1:

```
Ex:GrandePicDeBelledonne a ex:peak;
	rdfs:label "grand pic de Belledonne"@fr;
	ex:hasHeight "2977"^^xsd:Integer;
	ex:isCulminatingPointOf Ex:MassifdeBelleDonne.

Ex:MassifdeBelleDonne a owl:Class;
```

2.2:
The reasoner will infer Ex:MassifdeBelleDonne is a type of Ex:Massif because of statement [``]
