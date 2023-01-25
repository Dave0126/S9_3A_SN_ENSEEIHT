# TD 1. Systèmes de transitions

## (Bi)simulation forte.

#### EX1. Bisimulation

Exercice 1 (Bisimulation forte) Pour chacun des points suivantes, répondre à la question puis prouver cette réponse.

<img src="TD1_images/image-20230125102104135.png" alt="image-20230125102104135" style="zoom:35%;" />

1. S est il simulé par S′ ?

   $R = \{ \langle s_0,s_0'\rangle, \langle s_1, s_1' \rangle\}$ est une relation de simulation:

   <img src="TD1_images/image-20221109143232197.png" alt="image-20221109143232197" style="zoom:35%;" />

2. S simule t-il S′ ?

   $R = \{ \langle s_0',s_0 \rangle, \langle s_1', s_1 \rangle, \langle s_2', s_1 \rangle, \langle s_3', s_1 \rangle\}$ est une relation de simulation:

   <img src="TD1_images/image-20221109143852550.png" alt="image-20221109143852550" style="zoom:35%;" />

3. S et S ′ sont ils bisimilaires ?

   Calculons la plus grande relation de bisimulation entre S et S'. $R = \{ \langle s_1,s_1' \rangle \}$ est la plus grande. Comme $s_0'$ n'set simule par rien dans $R$, <u>***S et S' ne sont pas bisimilaire***</u>. (初始状态不包含在最大模拟关系中)
   
   <img src="TD1_images/image-20230125103401864.png" alt="image-20230125103401864" style="zoom:35%;" />
   
   - For $\langle s_0,s_0'\rangle$ :

<img src="TD1_images/image-20230125101858023.png" alt="image-20230125101858023" style="zoom:35%;" />



#### EX2. Compteur - Modélisation

Modéliser les compteurs $C_2$ et $C_3$.

<img src="TD1_images/image-20230125104650120.png" alt="image-20230125104650120" style="zoom:35%;" />



#### EX3. Compteur - Simulation

1. Trouver une <u>***relation***</u> de simulation entre $C_2$ et $C_3$.

   The relation $R$ is shown as below
   $$
   R \triangleq \{ \langle C_2^0,C_3^0\rangle , \langle C_2^1,C_3^1\rangle , \langle C_2^2,C_3^2\rangle\}
   $$
   图略。

2. Calculer la plus grande simulation.

   <img src="TD1_images/image-20230125111024813.png" alt="image-20230125111024813" style="zoom:35%;" />



#### EX4. Ensembles - Modélisation

1. Modéliser un tel ensemble.

   <img src="TD1_images/image-20230125112920399.png" alt="image-20230125112920399" style="zoom:35%;" />

2. Modéliser un tel multi-ensemble.

   <img src="TD1_images/image-20230125113429020.png" alt="image-20230125113429020" style="zoom:35%;" />

#### EX 6. Ensembles - BiSimulation

Dans la modélisation de l'ensemble, on ignore l'élément dans les événements $+$ et $-$. Existe-t'il maintenant une relation de bisimulation entre le compteur $C_2$ et l'*ensemble* ?

<img src="TD1_images/image-20230125104650120.png" alt="image-20230125104650120" style="zoom:35%;" />

<img src="TD1_images/image-20230125114340548.png" alt="image-20230125114340548" style="zoom:35%;" />
$$
R = \{ \langle \varnothing, C_2^0 \rangle, \langle \{a\}, C_2^1 \rangle, \langle \{b\}, C_2^1 \rangle , \langle \{a,b\}, C_2^2 \rangle \}
$$
