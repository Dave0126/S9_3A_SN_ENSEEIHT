# TP2

- <u>***Author***</u> : Guohao DAI (L1)
- <u>***Date***</u> : November 17, 2022

## 2 SHACL

### 2.1 Chaque realisateur doit avoir au moins un label

```
@prefix rdf:   <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix sh:    <http://www.w3.org/ns/shacl#> .
@prefix xsd:   <http://www.w3.org/2001/XMLSchema#> .
@prefix rdfs:  <http://www.w3.org/2000/01/rdf-schema#> .
@prefix ex:    <http://www.example.org/#> .
@prefix owl:   <http://www.w3.org/2002/07/owl#> .
@prefix tp:	<http://www.semanticweb.org/nathalie/ontologies/cinemaTP#>

# Chaque r ́ealisateur doit avoir au moins un label

tp:RealisateurShape a sh:NodeShape;
	sh:targetClass tp:Realisateur;
	sh:property [
		sh:path rdfs:label;
		sh:minCount 1;
	].
```

The violations found:

| FocusNode           | Path         | Message                                               |
| ------------------- | ------------ | ----------------------------------------------------- |
| `Christophe_Pantel` | `rdfs:label` | Property needs to have at least 1 values, but found 0 |

### 2.2 Chaque film doit avoir au moins un label

```
@prefix rdf:   <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix sh:    <http://www.w3.org/ns/shacl#> .
@prefix xsd:   <http://www.w3.org/2001/XMLSchema#> .
@prefix rdfs:  <http://www.w3.org/2000/01/rdf-schema#> .
@prefix ex:    <http://www.example.org/#> .
@prefix owl:   <http://www.w3.org/2002/07/owl#> .
@prefix tp:	<http://www.semanticweb.org/nathalie/ontologies/cinemaTP#>

# 2. Chaque film doit avoir au moins un label

tp:FilmShape a sh:NodeShape;
	sh:targetClass tp:Film;
	sh:property [
		sh:path rdfs:label;
		sh:minCount 1;
	].
```

The violations found:

| FocusNode               | Path         | Message                                               |
| ----------------------- | ------------ | ----------------------------------------------------- |
| `Dragon_Ball_Evolution` | `rdfs:label` | Property needs to have at least 1 values, but found 0 |
| `Les_Protecteurs`       | `rdfs:label` | Property needs to have at least 1 values, but found 0 |
| `Symphogear_Episode_01` | `rdfs:label` | Property needs to have at least 1 values, but found 0 |
| `Thor`                  | `rdfs:label` | Property needs to have at least 1 values, but found 0 |

### 2.3 Exprimer des contraintes d'équivalence pour les longs métrages/courts métrages (dans les ontologies : considérer les longs métrages à partir de 60 minutes)

```
@prefix rdf:   <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix sh:    <http://www.w3.org/ns/shacl#> .
@prefix xsd:   <http://www.w3.org/2001/XMLSchema#> .
@prefix rdfs:  <http://www.w3.org/2000/01/rdf-schema#> .
@prefix ex:    <http://www.example.org/#> .
@prefix owl:   <http://www.w3.org/2002/07/owl#> .
@prefix tp:	<http://www.semanticweb.org/nathalie/ontologies/cinemaTP#>

# 3. Exprimerlescontraintesd’ ́equivalencepourlongs-m ́etrages/courts-m ́etrages (dans l’ontologie : consid ́er ́e long `a partir de 60 minutes)

tp:ShortFilmShape a sh:NodeShape;
	sh:targetClass tp:CourtMetrage;
	sh:property [
		sh:path tp:aPourDuree;
		sh:datatype xsd:int;
		sh:minInclusive 0;
		sh:maxExclusive 60;
	].
tp:FeatureFilmShape a sh:NodeShape;
	sh:targetClass tp:LongMetrage;
	sh:property [
		sh:path tp:aPourDuree;
		sh:datatype xsd:int;
		sh:minInclusive 60;
	].
```

### 2.4 Un film est populaire si sa note est supérieure à 6.0 (en ontologie : supérieure à 4.0)

```
@prefix rdf:   <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix sh:    <http://www.w3.org/ns/shacl#> .
@prefix xsd:   <http://www.w3.org/2001/XMLSchema#> .
@prefix rdfs:  <http://www.w3.org/2000/01/rdf-schema#> .
@prefix ex:    <http://www.example.org/#> .
@prefix owl:   <http://www.w3.org/2002/07/owl#> .
@prefix tp:	<http://www.semanticweb.org/nathalie/ontologies/cinemaTP#>

# Un film est populaire s’il a une note sup ́erieure `a 6.0 (dans l’ontologie : sup ́erieur `a 4.0)

tp:FilmPopulaire a sh:NodeShape;
	sh:targetClass tp:Film;
	sh:property [
		sh:path tp:aPourNote;
		sh:datatype xsd:float;
		sh:minInclusive "6.0"^^xsd:float;
	].
```

The violations found:

| FocusNode            | Path           | Value | Message                                   |
| -------------------- | -------------- | ----- | ----------------------------------------- |
| `118318`             | `tp:aPourNote` | 4.7   | Value is not greater than or equal to 6.0 |
| `TRANSPORT`          | `tp:aPourNote` | 2.8   | Value is not greater than or equal to 6.0 |
| `TROIS`              | `tp:aPourNote` | 3.8   | Value is not greater than or equal to 6.0 |
| `VIVE_LA_VIE`        | `tp:aPourNote` | 5.5   | Value is not greater than or equal to 6.0 |
| `WAITING_IN_BEIJING` | `tp:aPourNote` | 4.0   | Value is not greater than or equal to 6.0 |
| `WILD_SIDE`          | `tp:aPourNote` | 5.6   | Value is not greater than or equal to 6.0 |
| `ZE_FILM`            | `tp:aPourNote` | 5.4   | Value is not greater than or equal to 6.0 |

### 2.5 Un film est caractérisé par un minimum de 1 genre et un maximum de 2 genres (les genres sont indiqués par une AnnotationProperty spécifique dans l'annotation de chaque film)

```
@prefix rdf:   <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix sh:    <http://www.w3.org/ns/shacl#> .
@prefix xsd:   <http://www.w3.org/2001/XMLSchema#> .
@prefix rdfs:  <http://www.w3.org/2000/01/rdf-schema#> .
@prefix ex:    <http://www.example.org/#> .
@prefix owl:   <http://www.w3.org/2002/07/owl#> .
@prefix tp:	<http://www.semanticweb.org/nathalie/ontologies/cinemaTP#>

# Un film est caract ́eris ́e par 1 genre minimum et 2 genres maximum (les genres sont renseign ́es dans les annotations de chaque film avec une An- notationProperty particuli`ere)

tp:FilmShape a sh:NodeShape;
	sh:targetClass tp:Film;
	sh:property [
		sh:path tp:aPourGenre;
		sh:minCount 1;
		sh:maxCount 2;
	].
```

The violations found:

```
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/KBAll#Dragon_Ball_Evolution	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/KBAll#Les_Protecteurs	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/KBAll#Symphogear_Episode_01	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/KBAll#Tenshii_no_Tamago	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/KBAll#Thor	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/cinemaTPpeup#DEMAIN_ON_DEMENAGE	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/cinemaTPpeup#DEMANDEZ_LA_PERMISSION_AUX_ENFANTS	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/cinemaTPpeup#SOUS_LES_TOITS_DE_PARIS	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/cinemaTPpeup#SUPER_RIPOUX	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/cinemaTPpeup#SUR_TA_JOUE_ENNEMIE	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/cinemaTPpeup#SUZANNE_ET_LES_VIEILLARDS	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/cinemaTPpeup#TANATHOR	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/cinemaTPpeup#TOUT_CE_QUI_BRILLE	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/cinemaTPpeup#TOUT_EST_PARDONNE	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/cinemaTPpeup#TOUT_LE_PLAISIR_EST_POUR_MOI	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/cinemaTPpeup#TOUT_PEUT_ARRIVER_(SOMETHING'S_GOTTA_GIVE)	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/cinemaTPpeup#TRANSFORMERS_2	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/cinemaTPpeup#TRESOR	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/cinemaTPpeup#TUTTO_L'AMORE_DEL_MUNDO	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/cinemaTPpeup#TU_SERAS_MON_FILS	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/cinemaTPpeup#UNAKKAY_UYIRANEN	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/cinemaTPpeup#UNE_AFFAIRE_D'ETAT	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/cinemaTPpeup#UNE_AVENTURE_(LA_BELLE_IMAGE)	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/cinemaTPpeup#UNE_FAMILLE_CLEF_EN_MAIN	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/cinemaTPpeup#UNE_PETITE_ZONE_DE_TURBULENCE	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/cinemaTPpeup#UNE_PURE_AFFAIRE/SUR_DES_RAILS	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/cinemaTPpeup#UNE_SEMAINE_SUR_DEUX	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/cinemaTPpeup#UNE_VIEILLE_MAITRESSE/VELLINI	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/cinemaTPpeup#UN_AMOUR_DESASTREUX	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/cinemaTPpeup#UN_AMOUR_PARISIEN	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/cinemaTPpeup#UN_AUTRE_QUE_MOI	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/cinemaTPpeup#UN_BAISER_PAPILLON	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/cinemaTPpeup#UN_BAISER_S'IL_VOUS_PLAIT	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/cinemaTPpeup#UN_BEAU_DIMANCHE	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/cinemaTPpeup#UN_CHATEAU_EN_ESPAGNE	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/cinemaTPpeup#UN_CRIME_D'AMOUR/UNE_FEMME_PARFAITE	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/cinemaTPpeup#UN_ETE_BRULANT	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/cinemaTPpeup#UN_HEUREUX_EVENEMENT	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/cinemaTPpeup#UN_HOMME,_UN_VRAI	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/cinemaTPpeup#UN_PRINTEMPS_A_PARIS	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/cinemaTPpeup#UN_PROPHETE	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/cinemaTPpeup#UN_SIMPLE_ESPION	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/cinemaTPpeup#VAHE/_LES_MAUVAIS_jOUEURS	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/cinemaTPpeup#VAS_VIS_ET_DEVIENS	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/cinemaTPpeup#VENUS_NOIRE	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/cinemaTPpeup#VICE_ET_VERSA	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/cinemaTPpeup#VIDHYADHI	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/cinemaTPpeup#VIOLETA_SE_FUE_A_LOS_CIELOS	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/cinemaTPpeup#VIPERE_AU_POING	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/cinemaTPpeup#VIRGIL/BONIMENTEUR	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property may only have 2 values, but found 3	http://www.semanticweb.org/nathalie/ontologies/cinemaTPpeup#VISAGES	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre		
http://www.w3.org/ns/shacl#Violation	7961277f673b0a4168c4f1b8208267fb	Property needs to have at least 1 values, but found 0	http://www.semanticweb.org/nathalie/ontologies/cinemaTPpeup#YUKI_ET_NINA	http://www.semanticweb.org/nathalie/ontologies/cinemaTP#aPourGenre
```



## 3 Edition de graphes via SPARQL

### 3.1 Ajouter le label « Label inconnu » à tous les réalisateurs qui n'en possèdent pas.

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

### 3.2 Supprimer la note des films populaires ayant une note inférieure à 5.

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

### 3.3 Ajouter aux films d'epourvus de label la dernière portion de leur URI (après le caractère '#')

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

### 3.4 Retirer un genre quelconque aux films en compétent plus de deux.

```
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX tp:<http://www.semanticweb.org/nathalie/ontologies/cinemaTP#>

# Retirer un genre quelconque aux films en comptant plus de deux.

construct {?film tp:aPourGenre rdf:nil}
where {
	{	select ?film (count(?filmGenre) as ?nbGerne)
		where {
			?film a tp:Film .
		?filmGenre a tp:GenreFilm .
		?film tp:aPourGenre ?filmGenre .
		} group by (?film)
	}
	filter (?nbGerne > 2)
}
```

