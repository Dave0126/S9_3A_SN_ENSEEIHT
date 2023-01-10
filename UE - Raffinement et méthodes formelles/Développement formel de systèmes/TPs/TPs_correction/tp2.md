```
CONTEXT
	Automate_ctx_0
SETS
	CARTONS	   //   Ensemble des cartons
END
```

```
MACHINE
	Automate_1
REFINES
	Automate_0
SEES
	Automate_ctx_0
VARIABLES
	Entrée	   //   variables pour les cartons en entrée
	Sortie	   //   variables pour les cartons en sortie
	Transit	   //   variables pour les cartons en transit
INVARIANTS
	inv1   :   	Entrée ∩ Sortie ∩ Transit = ∅	
   				//   Un carton ne peux pas être à la fois en entrée, en
   				//   transit et en sortie
	inv2   :   	Transit ⊆ CARTONS	   //   type de la variable Transit
	inv3   :   	(Entrée ≠ ∅) ∨ (Sortie ≠ ∅) ∨ (Transit ≠ ∅)	
				//   un carton est toujours en entrée, en transit ou en sortie
	inv4   :   	(Entrée = ∅ ∧ Transit = ∅) ⇒ Sortie = CARTONS
				//   S’il n’y a pas de carton en entrée ou en transit, alors la sortie contient tous les cartons

EVENTS
	INITIALISATION   ≙   
		extended
		STATUS ordinary
		BEGIN
			act1   :   	Entrée ≔ CARTONS
			act2   :   	Sortie ≔ ∅
			act3   :   	Transit ≔ ∅
	END

	Prendre   ≙   
		extended
		STATUS ordinary
		REFINES Prendre
		ANY
			c	   //   Soit un carton c
		WHERE
			grd1   :   	c ∈ CARTONS
			grd2   :   	c ∈ Entrée
			grd3   :   	c ∉ Transit
		THEN
			act1   :   	Entrée ≔ Entrée ∖ {c}
			act2   :   	Transit ≔ Transit ∪ {c}
	END

	Poser   ≙   
		extended
		STATUS ordinary
		REFINES Poser
		ANY
			c
		WHERE
			grd1   :   	c ∈ CARTONS
			grd2   :   	c ∉ Sortie
			grd3   :   	c ∉ Entrée
			grd4   :   	c ∈ Transit
		THEN
			act1   :   	Sortie ≔ Sortie ∪ {c} 
			act2   :   	Transit ≔ Transit ∖ {c}
	END

END
```

