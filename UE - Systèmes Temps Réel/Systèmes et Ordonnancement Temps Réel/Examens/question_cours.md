- Généralement, le système d'exploitation classique utilise un ordonnancement de type garrot avec priorité. Pourquoi ne sont-ils pas adaptés pour gener des taches temps reel?

  (通常，经典操作系统使用优先级循环调度。 为什么它们不适合实时系统？)

  Because for a real-time OS, in addition to correctly calculating the results, we also need to produce the results within a certain time (<u>***time constraint***</u>). The normal OS can schedule tasks without considering time constraints.



#### OSEK

- Dans le système temps réel <u>***OSEK***</u>, tous les objets sont définis <u>***statiquement***</u> dans un fichier <u>***OIL***</u>.

  （在实时系统OSEK中，所有对象都在静态文件OIL中定义）

  1. L’ordonnanceur permet-il un comportement de type RM ? de type EDF ?

     （调度程序是否允许类似 RM 或 EDF 的行为？）

     Because OSEK uses a <u>***static priority***</u> planning strategy. Process priorities are statically assigned according to the OIL file when the system is built. High priority processes are processed first. Low priority processes are processed later.
     For dynamic programming strategies such as EDF, the OSEK system <u>***cannot***</u> schedule.

  2. L’ordonnanceur permet-il la préemption de tâche ?

     （调度器是否允许任务抢占？）

     In OSEK, preemptive tasks are allowed. In the system, the preemption mode can be determined by the `SCHEDULE` keyword: preemptive, non-preemptive and mixed.



#### ARINC 653

- Dans la norme ARINC 653, la notion de partition est centrale.

  1. Comment l’exécution de ces partitions s’effectue-t-elle sur le calculateur avionique ?

     （这些分区是如何在航电计算机上执行的）

     Partition (spatial and temporal segregation) is ensured by the OS running on the hardware. 

     - Spatial sharing: Predetermined memory area for each partition
     - Time sharing: The OS repeats a basic cycle (MAjor time Frame: MAF) of fixed duration. Assign one or more time slots in the MAF to each partition.

     

  2. Que se passe-t-il si deux processus d’une <u>***même partition***</u> souhaitent utiliser une même variable $v$ ?（如果同一分区中的两个进程想要使用相同的变量 $v$ 会发生什么）

     Two processes in the same partition (Inter-process communication) can pass
     - mailbox of buffer or blackboard type, the first will not overwrite the content of the shared variable, while the last will;
     - make $v$ shared as global variable
     - synchronization by semaphore mechanism or event

     

  3. Même question en considérant deux processus de deux <u>***partitions différentes***</u> (un processus de chaque partition manipule les données d’une même variable $v$) ?

     （不同分区中的两个进程想要使用相同的变量 $v$ 会发生什么）

     Two processes in different partitions can use the same variable through <u>***message exchange***</u>. There are two protocols for message exchange:
     - Sampling mode
     - Queuing mode

     

  4. A quoi correspond la ségrégation spatiale?（什么是空间隔离？）

     Spatial sharing: Predetermined memory area for each partition

     

  5. Comment est réalisée la ségrégation temporelle?（时间隔离是如何实现的？）

     Time sharing: 

     - The OS repeats a basic cycle (MAjor time Frame: MAF) of fixed duration. 

     - Assign one or more time slots in the MAF to each partition.

       

  6. Que garentissent ces 2 ségrégation?（这两个隔离保证了什么？）

     The 2 segregation ensures that processes between different partitions will not affect each other, except through specified communication methods (<u>***message exchange***</u>)

     

  7. Pensez-vous que Linux (ou ses ségrégation) propose ces ségrégations? Si oui, quel(s) mécanisme(s) de Linux permet(ent) de les réaliser.

     （是否使用 Linux（或其隔离）来提供这些隔离？ 如果是，Linux 的哪些机制允许实现它们。）

     In the Linux kernel, resources can be <u>***virtualized***</u> to provide segregation similar to this.