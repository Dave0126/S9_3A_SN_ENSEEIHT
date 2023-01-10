```
MACHINE
	GestCompte (通过全部POs)
SEES
	COMPTES
VARIABLES
	comptes	   //   账户
	solde	   //   账户金额
INVARIANTS
	inv1   :   	comptes ⊆ C
	inv2   :   	solde ∈ comptes → ℕ	   //   二元关系：函数，一对一
	inv3   :   	∀c·(c∈comptes ⇒ solde(c)≤ S ∧ solde(c)≥0)
	
EVENTS
	INITIALISATION   ≙   	   //   初始化
		STATUS ordinary
		BEGIN
			act1   :   	comptes ≔ ∅
			act2   :   	solde ≔ ∅
	END

	Ouvrir   ≙   	   //   开户
		STATUS ordinary
		ANY
			c
		WHERE
			grd1   :   	c ∈ C ∖ comptes	   //   不在comptes中选取一个属于C的元素
		THEN
			act1   :   	comptes ≔ comptes ∪ {c}
			act2   :   	solde(c) ≔ 0
	END

	Fermer   ≙   	   //   销户
		STATUS ordinary
		ANY
			c
		WHERE
			grd1   :   	c ∈ C∖ comptes
		THEN
			act1   :   	comptes ≔ comptes ∖ {c}	   //   从comptes中减去元素c，不用管金额
	END

	Crediter   ≙   	   //   存
		STATUS ordinary
		ANY
			c	   //   账户
			a	   //   增加的金额
		WHERE
			grd1   :   	c ∈ comptes	   //   元素c在已知的comptes集合中
			grd2   :   	a ∈ ℕ	   //   元素a为自然数
			grd3   :   	a+solde(c) ≤ S	   //   增加后的账户余额不大于S
		THEN
			act1   :   	solde(c) ≔ solde(c) + a
	END

	Debiter   ≙   	   //   取
		STATUS ordinary
		ANY
			c	   //   账户
			a	   //   金额
		WHERE
			grd1   :   	c ∈ comptes	   //   元素c在已知的comptes集合中
			grd2   :   	a ∈ ℕ
			grd3   :   	solde(c) − a ≥ 0
		THEN
			act1   :   	solde(c) ≔ solde(c) − a
	END

END
```

```
MACHINE
	GestCompte_Ref_1
REFINES
	GestCompte
SEES
	COMPTES
VARIABLES
	comptes	   //   账户
	solde	   //   账户金额
INVARIANTS
	inv1   :   	comptes ⊆ C
	inv2   :   	solde ∈ comptes → ℕ	   //   二元关系：函数，一对一
	inv3   :   	∀c·(c∈comptes ⇒ solde(c)≤ S ∧ solde(c)≥0)
	
EVENTS
	INITIALISATION   ≙   	   //   初始化
		extended
		STATUS ordinary
		BEGIN
			act1   :   	comptes ≔ ∅
			act2   :   	solde ≔ ∅
	END

	Ouvrir   ≙   	   //   开户
		extended
		STATUS ordinary
		REFINES Ouvrir
		ANY
			c
		WHERE
			grd1   :   	c ∈ C ∖ comptes	   //   不在comptes中选取一个属于C的元素
		THEN
			act1   :   	comptes ≔ comptes ∪ {c}
			act2   :   	solde(c) ≔ 0
	END

	Fermer   ≙   	   //   销户
		extended
		STATUS ordinary
		REFINES Fermer
		ANY
			c
		WHERE
			grd1   :   	c ∈ C∖ comptes
		THEN
			act1   :   	comptes ≔ comptes ∖ {c}	   //   从comptes中减去元素c，不用管金额
	END

	Crediter   ≙   	   //   存
		extended
		STATUS ordinary
		REFINES Crediter
		ANY
			c	   //   账户
			a	   //   增加的金额
		WHERE
			grd1   :   	c ∈ comptes	   //   元素c在已知的comptes集合中
			grd2   :   	a ∈ ℕ	   //   元素a为自然数
			grd3   :   	a+solde(c) ≤ S	   //   增加后的账户余额不大于S
		THEN
			act1   :   	solde(c) ≔ solde(c) + a
	END

	Debiter   ≙   	   //   取
		extended
		STATUS ordinary
		REFINES Debiter
		ANY
			c	   //   账户
			a	   //   金额
		WHERE
			grd1   :   	c ∈ comptes	   //   元素c在已知的comptes集合中
			grd2   :   	a ∈ ℕ
			grd3   :   	solde(c) − a ≥ 0
		THEN
			act1   :   	solde(c) ≔ solde(c) − a
	END

	Virer   ≙   	   //   转账 (语法似乎有错误)
		STATUS ordinary
		ANY
			sour_compte	   //   转账端
			dest_compte	   //   收款端
			a	   //   转账金额
		WHERE
			grd1   :   	sour_compte ∈ comptes
			grd2   :   	dest_compte ∈ comptes
			grd3   :   	a ∈ ℕ 
			grd4   :   	a ≤ solde(sour_compte) ∧ a+solde(dest_compte) ≤ S
			grd5   :   	sour_compte ≠ dest_compte
		THEN
			act1   :   	solde ≔ ({sour_compte , dest_compte}<+ solde)
								∪ {sour_compte ↦ solde(sour_compte)−a} 
								∪ {dest_compte ↦ solde(dest_compte)+a}
	END

END
```

