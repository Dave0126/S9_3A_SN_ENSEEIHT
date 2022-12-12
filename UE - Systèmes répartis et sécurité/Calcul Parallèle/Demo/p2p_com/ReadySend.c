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

    double sendData[3] = {1.11111111, 2.22222222, 3.33333333};
    int sendBufferSize; // 3*sizeof(double)

    double recvData[3];
    MPI_Status status, statusReady;
    MPI_Request request;

    if (rank == 0) { // 发送进程
        // 确认接收进程的接收已经开始
        char recvReady;
        MPI_Recv(&recvReady, 1, MPI_BYTE, 1, 2, MPI_COMM_WORLD, &statusReady);
        printf("[%s | 进程0] : MPI_Recv(普通接收), 接收数据为 %c , \t\t\t\t\t tag=1\n", processor_name, recvReady);
        // 然后发送
        MPI_Rsend(&sendData, 3, MPI_DOUBLE, 1, 1, MPI_COMM_WORLD);
        printf("[%s | 进程0] : MPI_Rsend(就绪发送), 发送数据为 [%f, %f, %f] , \t tag=2\n", processor_name, sendData[0], sendData[1], sendData[2]);
    }
    
    else if (rank == 1) {   // 接收进程
        MPI_Irecv(&recvData, 3, MPI_DOUBLE, 0, 1, MPI_COMM_WORLD, &request);
        // 告诉发送进程，该进程的接收已经开始了
        char sendReady= 'R';
        MPI_Send(&sendReady, 1, MPI_BYTE, 0, 2, MPI_COMM_WORLD);
        printf("[%s | 进程1] : MPI_Send(普通), 发送数据为 %c , \t\t\t\t\t tag=1\n", processor_name, sendReady);
        // 等待 MPI_Irecv() 执行结束，并打印接收结果
        MPI_Wait(&request, &status);
        printf("[%s | 进程1] : MPI_Irecv(非阻塞接收), 接收数据为 [%f, %f, %f] , \t tag=2\n", processor_name, recvData[0], recvData[1], recvData[2]);
        
    }

    // 释放 MPI 的一些资源
    MPI_Finalize();
}