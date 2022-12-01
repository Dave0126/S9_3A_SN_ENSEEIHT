tp2

sparql

1

```
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX tp:<http://www.semanticweb.org/nathalie/ontologies/cinemaTP#>

construct {?realisateur rdfs:label "Unknown label"@en} 
where {
	?realisaruer a tp:Realisateur .
	filter not exists {?realisateur rdfs:label ?label}
}
```



2

```
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX tp:<http://www.semanticweb.org/nathalie/ontologies/cinemaTP#>

# Supprimer la note des films populaires ayant une note inf ́erieure `a 5.
construct {?film tp:aPourNote 0} 
where {
	?film a tp:FilmPopulaire .
	?film tp:aPourNote ?nbNote .
	filter(?nbNote < 5)
}
```

```
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX tp:<http://www.semanticweb.org/nathalie/ontologies/cinemaTP#>

# Ajouter aux films d ́epourvus de label la derni`ere portion de leur URI (apr`es le caract`ere ’#’).
construct {?film rdfs:label ?labelName} 
where {
	?film a tp:Film .
	filter not exists {?film rdfs:label ?label} .
	bind (?film as ?labelName)
}
```

