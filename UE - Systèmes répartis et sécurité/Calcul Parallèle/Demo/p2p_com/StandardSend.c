#include <mpi.h>
#include <stdio.h>

int main(int argc, char** argv) {
    // 初始化 MPI 环境
    MPI_Init(&argc, &argv);

    // 通过调用以下方法来得到所有可以工作的进程数量
    int size;
    MPI_Comm_size(MPI_COMM_WORLD, &size);

    // 得到当前进程的秩
    int rank;
    MPI_Comm_rank(MPI_COMM_WORLD, &rank);

    // 得到当前进程的名字
    char processor_name[MPI_MAX_PROCESSOR_NAME];
    int name_len;
    MPI_Get_processor_name(processor_name, &name_len);

    if (size != 2) {
        printf("*** 这个程序需要 2 个进程！当前进程数为 %d ***\n", size);
        MPI_Abort(MPI_COMM_WORLD, 1);
    }

    int sendBuf;
    int recvBuf;
    MPI_Status status1, status2;
    if (rank == 0) {
        sendBuf = 0;
        MPI_Send(&sendBuf, 1, MPI_INT, 1, 1, MPI_COMM_WORLD);
        printf("[进程0] : 标准发送模式, 发送数据为 %d , tag=1\n", sendBuf);
        MPI_Recv(&recvBuf, 1, MPI_INT, 1, 2, MPI_COMM_WORLD, &status1);
        printf("[进程0] : 标准发送模式, 接收数据为 %d , tag=2\n", recvBuf);
    } else if (rank == 1) {
        sendBuf = 1;
        MPI_Send(&sendBuf, 1, MPI_INT, 0, 2, MPI_COMM_WORLD);
        printf("[进程1] : 标准发送模式, 发送数据为 %d , tag=2\n", sendBuf);
        MPI_Recv(&recvBuf, 1, MPI_INT, 0, 1, MPI_COMM_WORLD, &status2);
        printf("[进程1] : 标准发送模式, 接收数据为 %d , tag=1\n", recvBuf);
    }

    // 释放 MPI 的一些资源
    MPI_Finalize();
}