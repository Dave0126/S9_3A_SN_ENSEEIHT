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



***Machine***


$$
\begin{align}
	&\text{MACHINE} \quad Ecole \\
	&\text{SEES} \quad StudentDef \\
	&\text{VARIABLES} \quad Student, OldStudents, DeC, Do\\
	&\text{INVARIANT}\\
	& \qquad inv1:Students \subseteq STUDENT :\mathbb{P}(STUDENT) \\
	& \qquad inv2:OldStudents \subseteq STUDENT \\
	& \qquad inv3:DeC \in Students \to DIPLOMAS, \quad (STUDENT \nrightarrow DIPLOMAS)\\
	& \qquad inv4:DeC \in OldStudents \to DIPLOMAS \\
	& \qquad inv5:Students \cap OldStudents = \varnothing \\
	& \qquad inv6:\forall d·d \in DIPLOMAS \Rightarrow cord(DeC ^{-1} [\{d\}]) \le 30\\
	&\text{INITIACISATION} \triangleq \\
	& \qquad act1:Students, OldStudents := \varnothing, \varnothing \\
	& \qquad act2:DeC, Do := \varnothing, \varnothing \\
	&\text{Inscreption} \triangleq \\
	& \qquad \text{ANY} \quad s,d\\
	& \qquad \text{WHEN} \\
	& \qquad \quad grd1:s\notin Students \\
	& \qquad \quad grd2:s\notin OldStudents \\
	& \qquad \quad grd3:s\in STUDENTS \\
	&	\qquad \quad grd4:d \in DIPLOMAS \\
	&	\qquad \quad grd5:cord(DeC^{-1} [\{d\} < 30])\\
	& \qquad \text{THEN} \\
	&	\qquad \quad act1: Students := Students \cup \{s\} \\
	&	\qquad \quad act2: DeC := DeC \cup \{s \mapsto d\} \\
	&\text{ObtenirDiplome} = \\
	& \qquad \text{ANY} \quad s\\
	& \qquad \text{WHEN} \\
	&	\qquad \quad (grd1:s\in STUDENTS)\\
	&	\qquad \quad grd2:s\in Students\\
	& \qquad \text{THEN} \\
	&	\qquad \quad act1: Students := Students \setminus \{s\} \\
	&	\qquad \quad act2: OldStudents := OldStudents \cup \{s\} \\
	&	\qquad \quad act3: DeC := \{s\} \lhd DeC \\
	&	\qquad \quad act4: Do := Do \cup \{s \mapsto DeC(s) \}\\
	& \qquad dom(A \lhd B) = dom(B) \setminus A \\
	& \text{Abs}\\
	& \qquad DeC \\
	& \qquad Students \\
	& \qquad Do \\
	& \qquad OldStudents \\
	& \text{Conc}\\
	& \qquad L,M,D \subset STUDENTS \\
	& \qquad  partition(STUDENTS,L,M,D) \\
	& \qquad DeC^{-1} [\{License\}] = L \\
	& \qquad DeC^{-1} [\{Master\}] = M \\
	& \qquad DeC^{-1} [\{Doctorat\}] = D \\
	& \qquad DeC [L] = \{License\} \\
	& \text{Collage} \\
	& \qquad ...\\
	& \text{InscriptionLicense} \\
	& \qquad \text{REFIVES} \quad \text{Inscription}\\
	& \qquad \text{ANY} \quad s\\
	& \qquad \text{WITH} \quad d:d=\text{License} )temoin\\
	& \qquad \text{WHERE}\\
	& \qquad \qquad grd1:\quad s \notin L \cup M \cup D\\
	& \qquad \qquad grd2:\quad s \in OldStudent\\
	& \qquad \qquad grd3:\quad cord(L) < 30\\
	& \qquad \text{THEN} \quad act1: L:=L\cup\{s\}\\
\end{align}
$$



***POs***


$$
\begin{align}
	& \text{PO:}\\
	& \text{INV:}\\
	& \qquad \qquad DeC^{-1} [\{L\}] = \{License\} \land \\
	& \qquad \qquad L' = L \cup \{s\} \land \\
	& \qquad \qquad DeC'= DeC \cup \{s \mapsto d\}  \land \\
	& \qquad \qquad Stud' = Stud \cup \{s\} \land d=License\\
	& \qquad \qquad \Rightarrow DeC^{-1} [\{L\}] = \{License\}\\
	& \text{GRD:}\\
	& \qquad s \notin L \cup M \cup D \cap S \notin OldStud\\
	& \qquad \cap cord(L) < 30 \cap d=License \cap (invariants) \Rightarrow \\
	& \qquad s \notin Stud \cap s \notin OldStud \cap \\
	& \qquad cord(DeC^{-1} [\{d\}]) < 30\\
	& \text{SIM:}\\
	& \qquad (gardes \, A) \cap (gardes \, C) \cap (invariants) \cap d=License \cap L'=L \cup \{s\}\\
	& \qquad \Rightarrow DeC' = DeC \cup \{s\mapsto d\} \cap Stud' = Stud \cup \{s\} \\
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

***CONTEXT***:

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
	&\qquad axm2: T_{min} \in \mathbb{Z} \\
	&\qquad axm3: T_{max} \in \mathbb{Z} \\
	&\qquad axm4: T_{def} \in \mathbb{Z} \\
	&\qquad axm5\quad(ENV1): T_{min} \le T_{max} \\
	&\qquad axm6\quad(ENV2): T_{min} \le T_{def} \le T_{max} \\
\end{align}
$$

***MACHINE***


$$
\begin{align}
	&\text{MACHINE} \quad Thermo \\
	&\text{VARIABLES}\\
	&\qquad etat, temp\\
	&\text{INVARIANTS}\\
	&\qquad inv1: \quad etat \in \text{ETAT} \\
	&\qquad inv2: \quad temp \in \mathbb{Z} \\
	&\qquad inv3: \quad etat = On \quad \Rightarrow T_{min} \le temp \land temp \le T_{max}\\
	&\text{EVENTS}\\
	&\qquad \text{INITIALISATION} \triangleq \\
	&\qquad \qquad act1: \quad etat := Off \\
	&\qquad \qquad act2: \quad temp :\in \mathbb{Z} \\
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
	&\qquad \qquad \qquad temp' > temp \land temp' \le T_{max} \\
	&\qquad \text{Augmenter}^* = \\
	&\qquad \qquad ANY \quad t \\
	&\qquad \qquad WHEN\\
	&\qquad \qquad \qquad t\in \mathbb{Z} , t > 0\\
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
	&\qquad \qquad \qquad temp' < temp \land temp' \ge T_{min} \\
\end{align}
$$

