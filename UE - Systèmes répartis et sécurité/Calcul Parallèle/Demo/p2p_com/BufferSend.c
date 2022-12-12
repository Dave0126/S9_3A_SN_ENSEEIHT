#include <mpi.h>
#include <stdio.h>
#include <stdlib.h>

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

    double sendData[3] = {1.23456789, 1.23456789, 1.23456789};
    int sendBufferSize; // 3*sizeof(double)

    double recvData[3];
    MPI_Status status;

    if (rank == 0) {
        MPI_Pack_size(3, MPI_DOUBLE, MPI_COMM_WORLD, &sendBufferSize);
        double* tempBuffer = (double*) malloc(sendBufferSize+MPI_BSEND_OVERHEAD);
        // 为tempBuffer申请MPI缓存
        // MPI_Buffer_attach(tempBuffer, sendBufferSize+MPI_BSEND_OVERHEAD);
        MPI_Bsend(&sendData, 3, MPI_DOUBLE, 1, 1, MPI_COMM_WORLD);
        printf("[%s | 进程0] : 缓存发送模式, 发送数据为 [%f, %f, %f] , tag=1\n", processor_name, sendData[0], sendData[1], sendData[2]);
        // 释放MPI缓存
        MPI_Buffer_detach(  tempBuffer, &sendBufferSize);
    }
    
    else if (rank == 1) {
        MPI_Recv(&recvData, 3, MPI_DOUBLE, 0, 1, MPI_COMM_WORLD, &status);
        printf("[%s | 进程1] : 缓存发送模式, 接收数据为 [%f, %f, %f] , tag=1\n", processor_name, recvData[0], recvData[1], recvData[2]);
        int recvCount;  // 实际接收到的数据数量
        MPI_Get_count(&status, MPI_DOUBLE, &recvCount);
        printf("[%s | 进程1] : 实际接收到的数据数量: %d\n", processor_name, recvCount);
    }

    // 释放 MPI 的一些资源
    MPI_Finalize();
}