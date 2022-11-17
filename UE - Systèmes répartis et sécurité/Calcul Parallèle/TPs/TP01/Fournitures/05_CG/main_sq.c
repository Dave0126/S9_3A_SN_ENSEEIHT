#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <mpi.h>

#include "util.h" 
#include "CG_sq.h" 


int main(int argc, char* argv[]) {

  int size;

  FILE *f;
  int M, N, nz;

  double *A = NULL;

  double *rhs;

  double tol = 1e-6;

  // Make sure that the command line has one argument (name of the matrix file)

  if(argc != 2){
    printf("usage : CG_sq <file>\n");
    return EXIT_FAILURE;
  }  

  MPI_Init(&argc, &argv);

  // Get number of processes and check that only 1 process is used
  MPI_Comm_size(MPI_COMM_WORLD, &size);

  if(size != 1) {
    printf("This application is meant to be run with 1 MPI process.\n");
    MPI_Abort(MPI_COMM_WORLD, EXIT_FAILURE);
  }


  //**************** READING THE MATRICE
  
  // You have the possibility to test with a small matrice ("Laplacien.txt")
  // or a larger one ("nos3.mtx")
  
  f = fopen(argv[1], "r");

  mm_read_mtx_crd_size(f, &M, &N, &nz);
  //printf("%d %d %d\n", M, N, nz);

  A = (double *) malloc(M*N*sizeof(double));
  read_A(f, A, M, N, nz);

  // increase diagonal to be sure to converge easily
  for (int i = 0; i < M; i++) {
    *(A+i*N+i) = *(A+i*N+i) + 10.0;
  }

  if (f !=stdin) fclose(f);

  //**************** END OF READING THE MATRICE

  //**************** SEQUENTIAL CG (M == N)

  rhs = (double *) malloc(N*sizeof(double));

  // initialization of the right-hand side
  for(int i = 0; i < N; i++){
    rhs[i] = (float) i;
  }
  cg_sq(A, rhs, N, tol);

  //**************** END OF SEQUENTIAL CG
  
  MPI_Finalize();
  printf("The End\n");

  return EXIT_SUCCESS;
}
