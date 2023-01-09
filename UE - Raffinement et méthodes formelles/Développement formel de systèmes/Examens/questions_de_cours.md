#### Proof Obligations

Qu’est-ce qu’une obligation de preuve?【Examen19 - 1.A】

什么是 PO？（以下答案来自 ChatGPT）

- Event-B defines proof obligations, which is a statement that must be proven to be true in order to demonstrate the correctness of a given theorem. Proof obligations are an important part of the Event-B method, as they are used to ensure that the theorems that are being developed are logically sound and correct. Proof obligations in Event-B are typically generated automatically by a proof tool, and they are used to guide the development of a proof. 

---

Une obligation de preuve déchargée (prouvée), peut-elle être considérées comme un théorèmes?

【Examen20 - 1.A & Examen21 - 1.A】

已履行（已证明）的证明义务可以被视为定理吗？（以下答案来自 ChatGPT）

- Yes, a discharged proof obligation in Event-B can generally be considered a theorem. 

- (THEOREM) In the context of Event-B, a theorem is a statement that has been proven to be true within the logical framework of the method. 
- (PO) To prove a theorem in Event-B, a proof obligation must be discharged, which means that it has been demonstrated to be true within the logical framework of the method. Once a proof obligation has been discharged, it can be considered a theorem.

---

Comment ces obligations de preuve sont-elles générées? 【Examen19 - 1.B】

这些 PO 是如何产生的？（以下答案来自 ChatGPT）

- （由证明工具自动生成）In Event-B, proof obligations are typically <u>***generated automatically by a proof tool***</u>. This process involves the use of algorithms and heuristics to identify potential proof obligations, and to generate the appropriate statements that must be proven in order to demonstrate the correctness of a given theorem.
- （生成证明义务的过程）The process of generating proof obligations typically begins by specifying the axioms, definitions, and other foundational principles that will be used in the proof. The proof tool then analyzes the theorem that needs to be proven, and generates a set of intermediate steps (proof obligations) that must be discharged in order to complete the proof.

---

Expliquer pourquoi les obligations de preuve peuvent-elles être générées automatiquement? 【Examen20 - 1.B】

解释为什么证明义务可以自动生成？（以下答案来自 ChatGPT）

- Automated proof obligation generation can help to ensure modified variable always satisfies the invariant, by using standardized algorithms and heuristics to generate proof obligations and based on deterministic rules of the event model. 



#### Invariant

Quel est le rôle de l’invariant dans la spécification de propriétés de systèmes ? 【Examen19 - 1.C】

不变量在系统属性规范中的作用是什么？（以下答案来自 ChatGPT）

- In system specification such as Event-B, an invariant is a property that must always be true for a given system. It is used to specify constraints on the behavior of the system, and to ensure that the system always satisfies certain properties.

---

Le maintien des invariants par l’évènement d’initialisation et par chaque évènement d’une machine permet de garantir le maintien de cet invariant pour tous les comportements décrits par cette machine. Expliquer pourquoi. 【Examen19 - 1.D】（以下答案来自 ChatGPT）

初始化事件和其他事件对 $inv$ 的维护使得可以保证为该机器的所有行为维护该 $inv$。解释为什么。

- (<u>***INIT***</u>) The initialization event is responsible for setting up the initial state of the system, and it must ensure that the invariants are satisfied at this point. If the invariants are not satisfied at the start of the system, it will not be possible to guarantee that they will be maintained throughout the execution of the machine.
- (<u>***OTHERS***</u>) Each subsequent event of the machine represents a change to the system, and it must also ensure that the invariants are maintained. If an event violates the invariants, it will not be possible to guarantee that they will be preserved for the remainder of the execution.

---

Quel mécanisme de preuve est associé à la preuve d'un invariant? 【Examen20 - 1.C】

什么证明机制与不变量的证明相关联？（以下答案来自 ChatGPT）

- Some common proof mechanisms include:
- （归纳法）<u>***Induction***</u>: Induction can be used to prove that an invariant holds for all states of a system. This involves demonstrating that the invariant holds for the initial state and that it is preserved by all transitions between states.
- Contraposition: Contraposition involves proving that the negation of the invariant leads to a logical contradiction. This can be used to prove that an invariant must hold in all cases.
- Direct proof: A direct proof involves demonstrating that the invariant holds directly, by applying the axioms and definitions of the logical framework being used.

---

Une machine décrit des invariants et des théorèmes. Tous deux décrivent des propriéts de la machine. Pourquoi théorèmes et invaraints ont-ils été différeneciés? 【Examen20 - 1.D】

机器描述不变量和定理， 两者都描述了机器的属性。 为什么要区分？（以下答案来自 ChatGPT）

- Invariants are are used to specify constraints on the behavior of the system, and to ensure that the system always satisfies certain properties.
- Theorems, on the other hand, are statements that have been proven to be true within the logical framework of a given method. 
- Invariants are used to specify constraints on the behavior of a system, while theorems are the end result of a proof process, representing the properties of a system that have been rigorously demonstrated to be true.



#### Variant

Lorsqu’un variant est introduit, il doit décroitre grâce aux évènements dit "convergents". 

当引入 variant 时，由于所谓的“收敛”事件，它必须减少。

a. Quelles sont les obligations de preuve du variant associées à ces évènements ? 【Examen19 - 1.E】

b. Quelles propriétés peut-on garantir grâce à la présence d'un variant décroissant? 【Examen20 - 1.E】

【a】与这些事件相关的变体的证明义务是什么？（以下答案来自 ChatGPT）

- In Event-B, a variant is a variable that changes over the course of the execution of a machine. (When a variant is introduced, it must be decreased by certain events, known as "convergent" events). 

- The proof obligations of the variant associated with these events are statements that must be proven in order to demonstrate that the variant does indeed decrease as required.
- PO - <u>***VAR***</u>: Ensuring that each convergent event decreases the proposed numeric variant.

【b】由于递减变体的存在，可以保证哪些属性？（以下答案来自 ChatGPT）

- Termination: the system will eventually terminate (no longer transition to a new state).
- Boundedness: the system will remain bounded (not exceed certain limits or boundaries).
- Fairness: all events will eventually be enabled and executed.

---

Qu'est-ce qu'un variant? Quel type de propriété permit-il d'établir? Vous donnerez précisément les caractéristiques du varaint.【Examen21 - 1.E】

什么是变体？ 他建立了什么样的属性？ 准确给出变体的特征。（以下答案来自 ChatGPT）

- In Event-B, a variant is a variable that changes over the course of the execution of a machine. It is used to describe the dynamic behavior of a system, and to specify how the state of the system changes over time (temporal property).
- There are a few key characteristics of variants:
  - Variables: Variants are variables that can change over the course of the execution of a machine.
  - Non-increasing: Their value must either remain constant or decrease over time.
  - Associating with events: Variants are typically associated with specific events, and change as a result of the execution of these events.
  - Describing dynamic behavior: Variants are used to describe the dynamic behavior of a system, and to specify how the state of the system changes over time.



#### Refinement

La raffinement établit une relation de simulation entre deux machine. Expliquer le rôle de la relation de simulation. 【Examen20 - 1.F】

细化在两台机器之间建立模拟关系。 解释模拟关系的作用。（以下答案来自 ChatGPT）

- This simulation relationship ensures that the concrete machine correctly simulates and respects the the abstract machine. That means, the concrete machine does not do anything that would violate the properties specified in the abstract machine.

