#include <stdio.h>
#include <stdlib.h>
#include <mpi.h>

int main(int argc, char *argv[])
{
  int value, rank, size;
  MPI_Status status;
  MPI_Request request;
  MPI_Init(&argc, &argv);
  MPI_Comm_rank(MPI_COMM_WORLD, &rank);
  MPI_Comm_size(MPI_COMM_WORLD, &size);

  do {
    if(rank == 0) {
      printf("\n[进程%d] : 请输入需要广播的值 (小于0时, 程序退出)\n", rank);
      scanf("%d", &value);
    }
    MPI_Bcast(&value, 1, MPI_INT, 0, MPI_COMM_WORLD);
    printf("[进程%d] : 收到来自 [进程0] 的广播, 接收数据为 [%d]\n", rank, value);
  } while(value >= 0);  // 用户输入小于0时退出
  
  // if(rank == 0) {
  //   printf("\n[进程%d] : 请输入需要广播的值 (小于0时, 程序退出)\n", rank);
  //   scanf("%d", &value);
  //   int i;
  //   for (i=0; i<size; i++) {
  //     if (i != rank){
  //       MPI_Send(&value, 1, MPI_INT, i, 0, MPI_COMM_WORLD);
  //     }
  //   }
  // } 

  // else {
  //   MPI_Recv(&value, 1, MPI_INT, 0, 0, MPI_COMM_WORLD, &status);
  //   printf("[进程%d] : 收到来自 [进程0] 的广播, 接收数据为 [%d]\n", rank, value);
  // }
  
  MPI_Finalize();
  return 0;
}
