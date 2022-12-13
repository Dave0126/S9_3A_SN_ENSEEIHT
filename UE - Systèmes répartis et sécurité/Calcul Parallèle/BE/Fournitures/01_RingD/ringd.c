#include <stdio.h>
#include <stdlib.h>
#include <mpi.h>

int main(int argc, char* argv[]) {

  MPI_Init(&argc, &argv);

  int comm_size;
  MPI_Comm_size(MPI_COMM_WORLD, &comm_size);
  if(comm_size%2 != 0) {
    printf("This application is meant to be run with an even number of MPI processes, not %d.\n", comm_size);
    MPI_Abort(MPI_COMM_WORLD, EXIT_FAILURE);
  }

  // Get my rank in the global communicator
  int my_rank;
  MPI_Comm_rank(MPI_COMM_WORLD, &my_rank);

  // Determine the colour and key based on whether my rank is even.
  char subcommunicator;
  int colour;
  int key;
  if(my_rank % 2 == 0) {
    subcommunicator = 'E';
    colour = 0;
    key = my_rank;
  } else {
    subcommunicator = 'O';
    colour = 1;
    key = comm_size - my_rank;
  }

  // Split of the global communicator
  MPI_Comm new_comm;
  MPI_Comm_split(MPI_COMM_WORLD, colour, key, &new_comm);

  int my_new_comm_rank, new_comm_size;
  // Get my rank in the new communicator
  MPI_Comm_rank(new_comm, &my_new_comm_rank);
  // Get the size of the new communicator
  MPI_Comm_size(new_comm, &new_comm_size);

  // Print my new rank and new communicator
  // printf("[MPI process %d] I am now MPI process %d in subcommunicator %c\n, previous=", my_rank, my_new_comm_rank, subcommunicator);

  int previous, next;
  // determine my neighbours according to my rank in my subcommunicator
  if(my_new_comm_rank == 0){
    previous = new_comm_size-1;
    next = my_new_comm_rank + 1;
  } else if(my_new_comm_rank == new_comm_size -1){
    previous = my_new_comm_rank -1;
    next = 0;
  } else {
    previous = my_new_comm_rank -1;
    next = my_new_comm_rank + 1;
  }

  // printf("[MPI process %d] new %d previous %d next %d in subcommunicator %c.\n", my_rank, my_new_comm_rank, previous, next, subcommunicator);

  float value = 1.0;
  MPI_Status status;

  if (subcommunicator == 'E') {
    if(my_new_comm_rank == 0) {
      MPI_Send(&value, 1, MPI_FLOAT, next, 2, new_comm);
      printf("[Process %d | MPI process %d] : Send a msg[%f] to %d \n", my_rank, my_new_comm_rank, value, next);
    } else {
      MPI_Recv(&value, 1, MPI_FLOAT, previous, 2, new_comm, &status);
      printf("[Process %d | MPI process %d] : Recv a msg[%f] from %d \n", my_rank, my_new_comm_rank, value, previous);
      value = 2*value;
      MPI_Send(&value, 1, MPI_FLOAT, next, 2, new_comm);
      printf("[Process %d | MPI process %d] : Send a msg[%f] to %d \n", my_rank, my_new_comm_rank, value, next);
    }
  }
  else {
    if(my_new_comm_rank == 0) {
      MPI_Send(&value, 1, MPI_FLOAT, previous, 1, new_comm);
      printf("[Process %d | MPI process %d] : Send a msg[%f] to %d \n", my_rank, my_new_comm_rank, value, previous);
    } else {
      MPI_Recv(&value, 1, MPI_FLOAT, next, 1, new_comm, &status);
      printf("[Process %d | MPI process %d] : Recv a msg[%f] from %d \n", my_rank, my_new_comm_rank, value, next);
      value = value/2;
      MPI_Send(&value, 1, MPI_FLOAT, previous, 1, new_comm);
      printf("[Process %d | MPI process %d] : Send a msg[%f] to %d \n", my_rank, my_new_comm_rank, value, previous);
    }
  }



  MPI_Finalize();

  return EXIT_SUCCESS;
}
