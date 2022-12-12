#include <stdio.h>
#include <stdlib.h>
#include <mpi.h>

void printRecvBuffer(int size, int recvBuffer[], int rank);

int main(int argc, char *argv[])
{
  int value, rank, size;
  MPI_Status status;
  MPI_Request request;
  MPI_Init(&argc, &argv);
  MPI_Comm_rank(MPI_COMM_WORLD, &rank);
  MPI_Comm_size(MPI_COMM_WORLD, &size);

  int recvBuffer[size];

  value = rank;
  MPI_Gather(&value, 1, MPI_INT, &recvBuffer[rank], 1, MPI_INT, 0, MPI_COMM_WORLD);
  printf("[进程%d] : MPI_Gather(), 向 [进程0] 发送消息 [%d]\n", rank, value);

  if(rank == 0) {
    printRecvBuffer(size, recvBuffer, rank);
  }

  MPI_Finalize();
  return 0;
}

void printRecvBuffer(int size, int recvBuffer[], int rank){
    printf("[进程%d] : MPI_Gather(), 从 [所有进程] 收集消息, 接收缓冲区的数据为 ", rank);
    printf("[ ");
    for(int i=0; i<size; i++) {
        printf("%d ", recvBuffer[i]);
    }
    printf("]\n");
}
