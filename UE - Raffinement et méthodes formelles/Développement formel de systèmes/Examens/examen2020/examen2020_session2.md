```
MACHINE
	Voyage
SEES
	TICKET_RESERVATIONS
VARIABLES
	passagers	   //   游客
	age	   //   年龄
	prix	   //   票价
	origin	   //   出发城市
	destination	   //   目的地城市
INVARIANTS
	inv1   :   	passagers ⊆ PASSAGERS
	inv2   :   	age ∈ passagers → ℕ 
	inv3   :   	prix ∈ passagers → ℕ 
	inv4   :   	origin ∈ passagers → VILLES
	inv5   :   	destination ∈ passagers → VILLES
	inv6   :   	∀p·(p ∈ passagers ⇒ origin(p) ≠ destination(p))

EVENTS
	INITIALISATION   ≙   
		STATUS ordinary
		BEGIN
			act1   :   	passagers ≔ ∅
			act2   :   	age ≔ ∅
			act3   :   	prix ≔ ∅
			act4   :   	origin ≔ ∅
			act5   :   	destination ≔ ∅
	END

	Reserver_billet   ≙   
		STATUS ordinary
		ANY
			p	   //   给定的乘客
			pr	   //   票价
			o	   //   出发地
			dest	   //   目的地
			a	   //   年龄
		WHERE
			grd1   :   	p ∈ PASSAGERS
			grd2   :   	pr ∈ ℕ 
			grd3   :   	o ∈ VILLES
			grd4   :   	dest ∈ VILLES
			grd5   :   	o ≠ dest
			grd6   :   	p ∉ passagers
			grd7   :   	a ∈ ℕ 
		THEN
			act1   :   	passagers ≔ passagers ∪ {p}
			act2   :   	age(p) ≔ a
			act3   :   	origin(p) ≔ o
			act4   :   	destination(p) ≔ dest
			act5   :   	prix(p) ≔ pr
	END

	Annuler_billet   ≙   
		STATUS ordinary
		ANY
			p
			pr
			o
			dest
			a
		WHERE
			grd1   :   	p ∈ passagers
			grd2   :   	pr ∈ ℕ 
			grd3   :   	o ∈ VILLES
			grd4   :   	dest∈ VILLES
			grd5   :   	pr = prix(p)
			grd6   :   	o = origin(p)
			grd7   :   	dest = destination(p)
			grd8   :   	a ∈ ℕ 
			grd9   :   	a = age(p)
		THEN
			act1   :   	prix ≔ prix ∖ {p ↦ pr}
			act2   :   	origin ≔ origin ∖ {p ↦ o}
			act3   :   	destination ≔ destination∖ {p ↦ dest}
			act4   :   	age ≔ age ∖ {p ↦ a}
			act5   :   	passagers ≔ passagers ∖ {p}
		END

END
```

```
MACHINE
	Voyage_Ref
REFINES
	Voyage
SEES
	TICKET_RESERVATIONS
VARIABLES
	passagers	   //   游客
	age	   //   年龄
	prix	   //   票价
	origin	   //   出发城市
	destination	   //   目的地城市
INVARIANTS
	extended

EVENTS
	INITIALISATION   ≙   
		extended
		STATUS ordinary
		BEGIN
			act1   :   	passagers ≔ ∅
			act2   :   	age ≔ ∅
			act3   :   	prix ≔ ∅
			act4   :   	origin ≔ ∅
			act5   :   	destination ≔ ∅
	END

	Reserver_billet_Jeune   ≙   
		extended
		STATUS ordinary
		REFINES Reserver_billet
		ANY
			p	   //   给定的乘客
			pr	   //   票价
			o	   //   出发地
			dest	   //   目的地
			a	   //   年龄
		WHERE
			grd1   :   	p ∈ PASSAGERS
			grd2   :   	pr ∈ ℕ 
			grd3   :   	o ∈ VILLES
			grd4   :   	dest ∈ VILLES
			grd5   :   	o ≠ dest
			grd6   :   	p ∉ passagers
			grd7   :   	a ∈ ℕ 
			grd8   :   	∀pj·(pj ∈ passagers ⇒ age(pj) ≥ 12 ∧ age(pj) ≤ 25 ∧ prix(pj) ≤ 300)
		THEN
			act1   :   	passagers ≔ passagers ∪ {p}
			act2   :   	age(p) ≔ a
			act3   :   	origin(p) ≔ o
			act4   :   	destination(p) ≔ dest
			act5   :   	prix(p) ≔ pr
	END

	Annuler_billet   ≙   
		extended
		STATUS ordinary
		REFINES Annuler_billet
		ANY
			p
			pr
			o
			dest
			a
		WHERE
			grd1   :   	p ∈ passagers
			grd2   :   	pr ∈ ℕ 
			grd3   :   	o ∈ VILLES
			grd4   :   	dest∈ VILLES
			grd5   :   	pr = prix(p)
			grd6   :   	o = origin(p)
			grd7   :   	dest = destination(p)
			grd8   :   	a ∈ ℕ 
			grd9   :   	a = age(p)
		THEN
			act1   :   	prix ≔ prix ∖ {p ↦ pr}
			act2   :   	origin ≔ origin ∖ {p ↦ o}
			act3   :   	destination ≔ destination∖ {p ↦ dest}
			act4   :   	age ≔ age ∖ {p ↦ a}
			act5   :   	passagers ≔ passagers ∖ {p}
	END

	Enchange_Billet   ≙   // 未通过PO (未通过act1,2,3,4,5)
		STATUS ordinary
		REFINES Annuler_billet
		ANY
			p
			pr
			o
			dest
			a
			dest_echange
		WHERE
			grd1   :   	p ∈ passagers
			grd2   :   	pr ∈ ℕ 
			grd3   :   	o ∈ VILLES
			grd4   :   	dest∈ VILLES
			grd5   :   	pr = prix(p)
			grd6   :   	o = origin(p)
			grd7   :   	dest = destination(p)
			grd8   :   	a ∈ ℕ 
			grd9   :   	a = age(p)
			grd10   :   	dest_echange ∈ VILLES
			grd11   :   	dest_echange = destination(p)
		THEN
			act1   :   	destination ≔ ({p↦dest, p↦dest_echange} <+ destination) 
										∪ (destination∖ {p ↦ dest}) 
										∪ (destination∖ {p ↦ dest_echange})
	END

END
```

