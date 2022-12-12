#include <stdio.h>
#include <stdlib.h>
#include <mpi.h>
#include <unistd.h>
#include <time.h>

void printRecvBuffer(int size, int recvBuffer[], int rank);

int main(int argc, char *argv[])
{
  int value, rank, size;
  MPI_Status status;
  MPI_Init(&argc, &argv);
  MPI_Comm_rank(MPI_COMM_WORLD, &rank);
  MPI_Comm_size(MPI_COMM_WORLD, &size);
  time_t startTime, endTime;

  startTime=time(NULL);

  switch(rank){
    case 0: sleep(3); break;
    case 1: sleep(2); break;
    case 2: sleep(1); break;
    default: break;
  }

  MPI_Barrier(MPI_COMM_WORLD);

  endTime=time(NULL);

  printf("[进程%d] : MPI_Barrier(). 执行时常为[%ld]秒.\n", rank, (endTime-startTime));
  
  MPI_Finalize();
  return 0;
}
