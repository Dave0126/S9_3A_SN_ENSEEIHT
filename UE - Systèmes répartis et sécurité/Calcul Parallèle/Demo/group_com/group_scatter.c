#include <stdio.h>
#include <stdlib.h>
#include <mpi.h>

void printSendBuffer(int size, int sendBuffer[], int rank);

int main(int argc, char *argv[])
{
  int value, rank, size;
  MPI_Status status;
  MPI_Request request;
  MPI_Init(&argc, &argv);
  MPI_Comm_rank(MPI_COMM_WORLD, &rank);
  MPI_Comm_size(MPI_COMM_WORLD, &size);

  int sendBuffer[size];

  if(rank == 0) {
    for(int i=0; i<size; i++) {
        sendBuffer[i] = i;
    }
    printSendBuffer(size, sendBuffer, rank);
  }

  MPI_Scatter(&sendBuffer[rank], 1, MPI_INT, &value, 1, MPI_INT, 0, MPI_COMM_WORLD);
  printf("[进程%d] : MPI_Scatter(), 从 [进程0] 接收消息 [%d]\n", rank, value);

  MPI_Finalize();
  return 0;
}

void printSendBuffer(int size, int sendBuffer[], int rank){
    printf("[进程%d] : MPI_Scatter(), 向 [所有进程] 散发消息, 发送缓冲区的数据为 ", rank);
    printf("[ ");
    for(int i=0; i<size; i++) {
        printf("%d ", sendBuffer[i]);
    }
    printf("]\n");
}
