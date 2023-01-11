# TD1 - Modelisation

## Exercise 1. Scolarite

```
CONTEXT
	Student_Def
SETS
	STUDENTS, DIPLOMAS
CONSTANTS
	License, Master, Doctorat
AXIOMS
	axm1: partition(DIPLOMAS, {License}, {Master}, {Doctorat})
```

$$
partition(S, A_0, A_1,...,A_n) \equiv 
\begin{Bmatrix}
	& \bigcup_{c=0}^{n}A_i=S\\ 
	&\forall i,j \quad i\ne j \Rightarrow A_i \cap A_j
\end{Bmatrix}
$$

$$
\begin{align}
	&\text{MACHINE} \quad Ecole \\
	&\text{SEES} \quad Student\_Def \\
	&\text{VARIABLES} \quad Student, Old\_Students, D\_e\_C, D\_o\\
	&\text{INVARIANT}\\
	& \qquad inv1:Students \subseteq STUDENT :\mathbb{P}(STUDENT) \\
	& \qquad inv2:Old\_Students \subseteq STUDENT \\
	& \qquad inv3:D\_e\_C \in Students \to DIPLOMAS, \quad (STUDENT \nrightarrow DIPLOMAS)\\
	& \qquad inv4:D\_e\_C \in Old\_Students \to DIPLOMAS \\
	& \qquad inv5:Students \cap Old\_Students = \emptyset \\
	& \qquad inv6:\forall d·d \in DIPLOMAS \Rightarrow cord(D\_e\_C ^{-1} [\{d\}]) \le 30\\
	&\text{INITIACISATION} \triangleq \\
	& \qquad act1:Students, Old\_Students := \empty, \empty \\
	& \qquad act2:D\_e\_C, D\_o := \empty, \empty \\
	&\text{Inscreption} \triangleq \\
	& \qquad \text{ANY} \quad s,d\\
	& \qquad \text{WHEN} \\
	& \qquad \quad grd1:s\notin Students \\
	& \qquad \quad grd2:s\notin Old\_Students \\
	&	\qquad \quad grd3:d \in DIPLOMAS \\
	&	\qquad \quad grd4:cord(D\_e\_C^{-1} [\{d\} < 30])\\
	& \qquad \text{THEN} \\
	&	\qquad \quad act1: Students := Students \cup \{s\} \\
	&	\qquad \quad act2: D\_e\_C := D\_e\_C \cup \{s \mapsto d\} \\
	&\text{Obtenir\_Diplome} = \\
	& \qquad \text{ANY} \quad s\\
	& \qquad \text{WHEN} \\
	&	\qquad \quad (grd1:s\in STUDENTS)\\
	&	\qquad \quad grd2:s\in Students\\
	& \qquad \text{THEN} \\
	&	\qquad \quad act1: Students := Students \setminus \{s\} \\
	&	\qquad \quad act2: Old\_Students := Old\_Students \cup \{s\} \\
	&	\qquad \quad act3: D\_e\_C := \{s\} \lhd D\_e\_C \\
	&	\qquad \quad act4: D\_o := D\_o \cup \{s \mapsto D\_e\_c(s) \}\\
	& \qquad dom(A \lhd B) = dom(B) \setminus A \\
	& \text{Abs}\\
	& \qquad D\_e\_C \\
	& \qquad Students \\
	& \qquad D\_o \\
	& \qquad Old\_Students \\
	& \text{Conc}\\
	& \qquad L,M,D \subset STUDENTS \\
	& \qquad  partition(STUDENTS,L,M,D) \\
	& \qquad D\_e\_C^{-1} [\{License\}] = L \\
	& \qquad D\_e\_C^{-1} [\{Master\}] = M \\
	& \qquad D\_e\_C^{-1} [\{Doctorat\}] = D \\
	& \qquad D\_e\_C [L] = \{License\} \\
	& \text{Collage} \\
	& \qquad ...\\
	& \text{InscriptionLicense} \\
	& \qquad \text{REFIVES} \quad \text{Inscription}\\
	& \qquad \text{ANY} \quad s\\
	& \qquad \text{WITH} \quad d:d=\text{License} )temoin\\
	& \qquad \text{WHERE}\\
	& \qquad \qquad grd1:\quad s \notin L \cup M \cup D\\
	& \qquad \qquad grd2:\quad s \in Old\_Student\\
	& \qquad \qquad grd3:\quad cord(L) < 30\\
	& \qquad \text{THEN} \quad act1: L:=L\cup\{s\}\\
	
	& \text{PO:}\\
	& \qquad \text{\_INV:}\\
	& \qquad \qquad D\_e\_C^{-1} [\{L\}] = \{License\} \and \\
	& \qquad \qquad L' = L \cup \{s\} \and \\
	& \qquad \qquad D\_e\_C'= D\_e\_C \cup \{s \mapsto d\}  \and \\
	& \qquad \qquad Stud' = Stud \cup \{s\} \and d=License\\
	& \qquad \qquad \Rightarrow D\_e\_C^{-1} [\{L\}] = \{License\}\\
	
	& \text{GRD:}\\
	& \qquad s \notin L \cup M \cup D \cap S \notin Old\_Stud\\
	& \qquad \cap cord(L) < 30 \cap d=License \cap (invariants) \Rightarrow \\
	& \qquad s \notin Stud \cap s \notin Old\_Stud \cap \\
	& \qquad cord(D\_e\_C^{-1} [\{d\}]) < 30\\
	
	& \text{SIM:}\\
	& \qquad (gardes \, A) \cap (gardes \, C) \cap (invariants) \cap d=License \cap L'=L \cup \{s\}\\
	& \qquad \Rightarrow D\_e\_C' = D\_e\_C \cup \{s\mapsto d\} \cap Stud' = Stud \cup \{s\} \\
	& \qquad L' \cup M \cup D\\
	& \qquad \qquad = L\cup\{s\} \cup M \cup D \\
	& \qquad \qquad = \{s\} \cup (L \cup M \cup D)\\
	
\end{align}
$$





## Exercise 2

> Analyse:
>
> - `Func :`
>   - allumer (ON + temp default) + eteindre
>   - temperature modifiable
>   - "+"/"-" changment temp
>   - reset la temp (temp default)
>   - temp "par default" = 18 dgree
>   - temp min. = 7 degree
>   - temp max. = 35 degree
> - `SAFETY :`
>   - $7 \le temp \le 35$
> - `ENV :`
>   - $T_{min} \le T_{max}$
>   - $T_{min} \le T_{def} \le T_{max}$


$$
\begin{align}
	&\text{CONTEXT} \quad ThermoCtx \\
	&\text{SETS}\\
	&\qquad \text{ETAT}\\
	&\text{CONSTANTS}\\
	&\qquad On, Off,\\
	&\qquad T_{min}, T_{max}, T_{def}\\
	&\text{AXIONS}\\
	&\qquad axm1: partition(\text{ETAT},\{On\}, \{Off\}) \\
	&\qquad axm2: T_{min} \in \Z \\
	&\qquad axm3: T_{max} \in \Z \\
	&\qquad axm4: T_{def} \in \Z \\
	&\qquad axm5\quad(ENV1): T_{min} \le T_{max} \\
	&\qquad axm6\quad(ENV2): T_{min} \le T_{def} \le T_{max} \\
\end{align}
$$

$$
\begin{align}
	&\text{MACHINE} \quad Thermo \\
	&\text{VARIABLES}\\
	&\qquad etat, temp\\
	&\text{INVARIANTS}\\
	&\qquad inv1: \quad etat \in \text{ETAT} \\
	&\qquad inv2: \quad temp \in \Z \\
	&\qquad inv3: \quad etat = On \quad \Rightarrow T_{min} \le temp \and temp \le T_{max}\\
	&\text{EVENTS}\\
	&\qquad \text{INITIALISATION} \triangleq \\
	&\qquad \qquad act1: \quad etat := Off \\
	&\qquad \qquad act2: \quad temp :\in \Z \\
	
	&\qquad \text{Allumer} = \\
	&\qquad \qquad WHEN \quad etat = Off \\
	&\qquad \qquad THEN \\
	&\qquad \qquad \qquad act1: \quad etat := On \\
	&\qquad \qquad \qquad act2: \quad temp := T_{def} \\
	
	&\qquad \text{Eteindre} = \\
	&\qquad \qquad WHEN \quad etat = On \\
	&\qquad \qquad THEN \\
	&\qquad \qquad \qquad act1: \quad etat := Off \\
	
	&\qquad \text{Reset} = \\
	&\qquad \qquad WHEN \quad etat = On \\
	&\qquad \qquad THEN \\
	&\qquad \qquad \qquad act1: \quad temp := T_{def} \\
	
	&\qquad \text{Augmenter} = \\
	&\qquad \qquad WHEN \quad etat = On \\
	&\qquad \qquad \qquad temp < T_{max} \\
	&\qquad \qquad THEN \\
	&\qquad \qquad \qquad temp:1 \\
	&\qquad \qquad \qquad temp' > temp \and temp' \le T_{max} \\
	
	&\qquad \text{Augmenter}^* = \\
	&\qquad \qquad ANY \quad t \\
	&\qquad \qquad WHEN\\
	&\qquad \qquad \qquad t\in \Z , t > 0\\
	&\qquad \qquad \qquad temp < T_{max}, etat = On \\
	&\qquad \qquad \qquad temp+t \le T_{max}\\
	&\qquad \qquad THEN \\
	&\qquad \qquad \qquad act1: \quad temp' := temp + t \\
	&\qquad \qquad WITH \\
	&\qquad \qquad \qquad t = 1 \\
	
	&\qquad \text{Diminuer} = \\
	&\qquad \qquad WHEN \quad etat = On \\
	&\qquad \qquad \qquad temp > T_{min} \\
	&\qquad \qquad THEN \\
	&\qquad \qquad \qquad temp:1 \\
	&\qquad \qquad \qquad temp' < temp \and temp' \ge T_{min} \\
\end{align}
$$

