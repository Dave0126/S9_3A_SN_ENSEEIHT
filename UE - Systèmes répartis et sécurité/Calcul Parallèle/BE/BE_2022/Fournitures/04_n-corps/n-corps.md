# Exercice 4 : problème aux N-corps

Ce fichier fait partie du rendu évalué pour le BE de Calcul parallèle.

## Question 1

Déterminer quels calculs peuvent être parallélisés et quelles communications mettre en
place dans le code séquentiel suivant. Proposer une réécriture parallèle avec
transmission de messages de ce code.

```
variables : force[1,...,N], data[1,...,N]
for t in 1, nb_steps do
  for i in 1, N do
    force[i] = 0
    for j in 1, N do
      force[i] = force[i] + interaction(data[i], data[j])
    end for
  end for
  for i in 1, N do
    data[i] = update(data[i], force[i])
  end for
end for
```

### Réponse Q1

We can start our parallelized algorithm at `nb_steps`:

- First, broadcast `data[N]` from `root_rank` (or it can exist as a copy variable in each process) and initialized `force[N]` (or put it in each parallel process initialized separately)
- We put the loop for computing `force[i]` and updating `data[i]` in each process.
- Finally converge to `root_rank`.

I'll modify in pseudocode:

```
variables : force[1,...,N], data[1,...,N], local_force, local_data
// each process == each corps
in process root_rank (=0):
	MPI_Bcast(data[N], from root_rank to each process)

in each process i:
	local_force = 0
	for j in 1, N do
		local_force = local_force + interaction(local_data, data[j])
    end for
    local_data = update(local_data, local_force)
  	
in process root_rank:
	MPI_Gather(local_force, TO rook_rank:force[N])
	MPI_Gather(local_data, TO rook_rank:data[N])
```

## Question 2

Proposer une version parallèle du code suivant.

```
variables : force[1,...,N], data[1,...,N]
for t in 1, nb_steps do
  for i in 1, N do
    force[i] = 0
  end for
  for i in 1, N do
    for j in 1, i-1 do
      f = interaction(data[i],data[j])
      force[i] = force[i] + f
      force[j] = force[j] - f
    end for
  end for
  for i in 1, N do
    data[i] = update(data[i], force[i])
  end for
end for
```

### Réponse Q2

```
variables : force[1,...,N], data[1,...,N], local_force, local_data, f
// each process == each corps
in process root_rank (=0):
	MPI_Bcast(data[N], FROM root_rank TO each process)

in each process i:
	local_force = 0
	for j in 1, N do
		if (process i == object that applies force) {
			f = interaction(local_data, data[j])
			MPI_Send(&f, TO objects under force)
			local_force = local_force - f
		} else { // Objects under force
			MPI_Recv(&f, FROM object that applies force)
			local_force = local_force + f
		}
    end for
    local_data = update(local_data, local_force)
  	
in process root_rank:
	MPI_Gather(local_force, TO rook_rank:force[N])
	MPI_Gather(local_data, TO rook_rank:data[N])
```

## Question 3

Quels sont les inconvénients de cette version ?
Proposer une solution pour les atténuer.

### Réponse Q3

- This version will take longer to execute.

