```
CONTEXT
	Automate_ctx_2
EXTENDS
	Automate_ctx_0
SETS
	ARRIVEES	   //   Des lignes d'arrivées vers l'automate (le robot)
	DEPARTS	   //   Des lignes de départ vers l'automate (le robot)
	TRANSITIONS	   //   Représente les cartons en transit (comme un enregistrement {carton, sortie})
END
```

```
MACHINE
	Automate_2
REFINES
	Automate_1
SEES
	Automate_ctx_2
VARIABLES
	Transitions	   //   variable pour un couple {carton, sortie de l'entrepot/départ}, ce sont les transitions qui sont EN COURS
	LigneEntrée	   //   variable pour un couple {carton, arrivée}
	LigneSortie	   //   variable pour un couple {carton, départ}
	carton_de_t	   //   champs accessible d'une transition t, ici le carton du couple t = {carton, sortie}
	départ_de_t	   //   hamps accessible d'une transition t, ici le départ du couple t = {carton, sortie}
INVARIANTS
	inv1   :   	LigneEntrée ∈ CARTONS ⇸ ARRIVEES	   //   Le carton c part d'une arrivée pour aller vers l'automate
	inv2   :   	LigneSortie ∈ CARTONS ⇸ DEPARTS	   //   Le carton c va vers un départ à partir de l'automate
	inv3   :   	Transitions ⊆ TRANSITIONS
	inv4   :   	carton_de_t ∈ Transitions ↣ CARTONS
	inv5   :   	départ_de_t ∈ Transitions → DEPARTS
	inv6   :   	dom(LigneEntrée) = Entrée
	inv7   :   	dom(LigneSortie) = Sortie
	inv8   :   	∀ carton· carton ∈ Transit ∧ carton ∈ ran(carton_de_t) ∧ dom(carton_de_t) = Transitions

EVENTS
	INITIALISATION   ≙   
		STATUS ordinary
		BEGIN
			act1   :   	LigneSortie ≔ ∅	   
			//   Les fonctions sont des ensembles donc on peut faire cela. Et c'est juste car aucune action est possible, car il n'y a pas de cartons initialement en Sortie. 
			act2   :   	Transitions ≔ ∅	   
			//   Initialement, il n’y a pas de cartons en transit.
			act3   :   	carton_de_t ≔ ∅	   
			//   Les fonctions sont des ensembles donc on peut faire cela. Et c'est juste car aucune action est possible, car il n'y a pas de cartons initialement en transit.
			act4   :   	départ_de_t ≔ ∅	   
			//   Les fonctions sont des ensembles donc on peut faire cela. Et c'est juste car aucune action est possible, car il n'y a pas de cartons initialement en transit.
			act5   :   	LigneEntrée :∈ CARTONS ⇸ ARRIVEES	   //   affectation non-déterministe 
	END

	Prendre   ≙   
		STATUS ordinary
		REFINES Prendre
		ANY
			c	   //   Soit un carton c
			a	   //   Soit une arrivée vers l'automate
			d	   //   Soit un départ de l'automate
			t	   //   Soit t une transition (couple {carton, départ})
		WHERE
			grd1   :   	c ∈ CARTONS	   //   "Type" de c
			grd2   :   	c ∈ dom(LigneEntrée)
			grd3   :   	a ∈ ARRIVEES	   //   "Type" de a
			grd4   :   	c ↦ a ∈ LigneEntrée	   //   Le carton que l’on prend était bien dans l’arrivée demandée 
			grd5   :   	d ∈ DEPARTS	   //   "Type" de d
			grd6   :   	t ∈ TRANSITIONS	   //   "Type" de t, t est une transition
			grd7   :   	t ∉ Transitions	   
			//   Le carton que l'on veut prendre n'est pas déjà en transit (Transitions est un sous-ensemble de TRANSITIONS représentant les transitions en cours)
		THEN
			act1   :   	carton_de_t(t) ≔ c	   //   On fixe le champs carton du couple t = {carton, départ}
			act2   :   	départ_de_t(t) ≔ d	   //   On fixe le champs départ du couple t = {carton, départ}
			act3   :   	Transitions ≔ Transitions ∪ { t }	   //   On rajoute cette transition à l'ensemble des transitions en cours (nommé Transitions)
			act4   :   	LigneEntrée ≔ {c} ⩤ LigneEntrée	   //   On retire un carton de l'entrée (LigneEntrée)
	END

	Poser   ≙   
		STATUS ordinary
		REFINES Poser
		ANY
			c	   //   Le carton
			d	   //   Le départ du carton à partir de l'automate
			t	   //   La transition associée au carton
			a	   //   L'arrivée du carton vers l'automate
		WHERE
			grd1   :   	c ∈ CARTONS	   //   "Type" de c
			grd4   :   	carton_de_t(t) = c
			grd5   :   	départ_de_t(t) = d
			grd6   :   	d ∈ DEPARTS	   //   "Type" de d
			grd7   :   	t ∈ Transitions	   //   t est une transition en cours
			grd8   :   	a ∈ ARRIVEES	   //   "Type" de a
			grd9   :   	c ∉ dom(LigneSortie)	   //   Le carton n'est pas déjà posé
			grd10   :   	t ∈ TRANSITIONS	   //   "Type" de t 
			grd11   :   	t ∈ dom(carton_de_t)
			grd12   :   	t ∈ dom(départ_de_t)
		THEN
			act1   :   	LigneSortie ≔ LigneSortie ∪ {c ↦ d}	   //   On ajoute le carton à la sortie (ligen de sortie)
			act2   :   	Transitions ≔ Transitions ∖ {t}	   //   On retire t des transitions en cours 
			act3   :   	carton_de_t ≔ {t} ⩤ carton_de_t	   //   Pour que l'inv4 soit tjrs vérifié après l'act2 et la grd11
			act4   :   	départ_de_t ≔ {t} ⩤ départ_de_t	   //   Pour que l'inv5 soit tjrs vérifié après l'act2 et la grd12
	END

END
```

