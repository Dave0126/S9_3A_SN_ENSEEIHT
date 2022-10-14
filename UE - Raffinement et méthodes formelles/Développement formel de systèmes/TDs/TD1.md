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
partition(S, A_0, A_1,...,A_n)\equiv 
\left\{\begin{align} 
	& \bigcup_{c=0}^{n}A_i=S\\ 
	&\forall i,j \quad i\ne j \Rightarrow A_i \cap A_j
\end{align}\right\}
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
	& \qquad inv6:\forall d·d \in DIPLOMAS \Rightarrow cord(D\_e\_C ^{-1}) [\{d\}] \le 30\\
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
	& \qquad ...
\end{align}
$$

