#include <stdio.h>
#include <stdlib.h>
#include <mpi.h>

int main( int argc, char *argv[] ) {

  int value;
  int my_rank, size;
  int previous, next;
  MPI_Status status;

  MPI_Init (NULL, NULL);

  // Get number of processes
  MPI_Comm_rank (MPI_COMM_WORLD, &my_rank);
  MPI_Comm_size (MPI_COMM_WORLD, &size);

  // determine my neighbours according to my rank
  if(my_rank == 0){
    previous = size-1;
    next = my_rank + 1;
  } else if(my_rank == size -1){
    previous = my_rank -1;
    next = 0;
  } else {
    previous = my_rank -1;
    next = my_rank + 1;
  }

  value = 1;

  // The nodes, starting with node 0, transmit the value to each other,
  // each time multiplying it by 2.
  // At the end of the transmission, node 0 receives the value 2^(size-1)
  //
  // Instruction: before each send and after each receive, each node displays
  //   - its rank
  //   - the type communication (send, recv)
  //   - the value

  if(my_rank == 0) {
    // 初始的进程：Send
    MPI_Send(&value, 1, MPI_INT, next, 1, MPI_COMM_WORLD);
    printf("Process %d: Send the Init value [%d]. \n", my_rank, value);
  } else if(next == 0){
    // 最后的进程：Recv
    MPI_Recv(&value, 1, MPI_INT, previous, 1, MPI_COMM_WORLD, &status);
    printf("Process %d: Receive the Final value [%d]. \n", my_rank, value);
    printf("The End\n");
  } else {
    // 中间的进程：
    //      Recv 上一个进程，Send 给下一个进程
    MPI_Recv(&value, 1, MPI_INT, previous, 1, MPI_COMM_WORLD, &status);
    printf("Process %d: Receive the value [%d] from Process %d,\t", my_rank, value, previous);
    value = 2*value;
    MPI_Send(&value, 1, MPI_INT, next, 1, MPI_COMM_WORLD);
    printf("and Send value [%d] to Process %d. \n", value, next);
  }

  MPI_Finalize();

  return EXIT_SUCCESS;

}
