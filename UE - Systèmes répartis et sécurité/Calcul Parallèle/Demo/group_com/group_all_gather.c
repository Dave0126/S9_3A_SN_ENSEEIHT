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
  MPI_Allgather(&value, 1, MPI_INT, &recvBuffer[0], 1, MPI_INT, MPI_COMM_WORLD);
  printf("[进程%d] : MPI_Allgather(), 向 [所有进程] 发送消息 [%d]\n", rank, value);
  
  MPI_Finalize();
  printRecvBuffer(size, recvBuffer, rank);
  return 0;
}

void printRecvBuffer(int size, int recvBuffer[], int rank){
    printf("[进程%d] : MPI_Allgather(), 从 [所有进程] 收集消息, 接收缓冲区的数据为 ", rank);
    printf("[ ");
    for(int i=0; i<size; i++) {
        printf("%d ", recvBuffer[i]);
    }
    printf("]\n");
}
