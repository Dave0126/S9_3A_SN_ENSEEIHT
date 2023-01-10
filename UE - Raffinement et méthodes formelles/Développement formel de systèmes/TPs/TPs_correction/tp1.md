```
CONTEXT
	Automate_ctx_0
SETS
	CARTONS	   //   Ensemble des cartons
END
```

```
MACHINE
	Automate_0
SEES
	Automate_ctx_0
VARIABLES
	Entrée	   //   variables pour les cartons en entrée
	Sortie	   //   variables pour les cartons en sortie
INVARIANTS
	inv1   :   	Entrée ⊆ CARTONS	   //   type de la variable Entrée
	inv2   :   	Sortie ⊆ CARTONS	   //   type de la variable Sortie
	inv3   :   	Entrée ∩ Sortie = ∅	   //   un carton ne peut pas être à la fois en entrée et en sortie

EVENTS
	INITIALISATION   ≙   
		STATUS ordinary
		BEGIN
			act1   :   	Entrée ≔ CARTONS
			act2   :   	Sortie ≔ ∅
	END

	Prendre   ≙   	   //   Prendre un carton à l'entrée
		STATUS ordinary
		ANY
			c	   //   Soit un carton c
		WHERE
			grd1   :   	c ∈ CARTONS
			grd2   :   	c ∈ Entrée
		THEN
			act1   :   	Entrée ≔ Entrée ∖ {c}
	END

	Poser   ≙   	   //   Poser un carton à la sortie
		STATUS ordinary
		ANY
			c
		WHERE
			grd1   :   	c ∈ CARTONS
			grd2   :   	c ∉ Sortie
			grd3   :   	c ∉ Entrée
		THEN
			act1   :   	Sortie ≔ Sortie ∪ {c} 
	END

END
```

