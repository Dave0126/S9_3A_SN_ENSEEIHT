#include <stdio.h>
#include <mpi.h>

int main( int argc, char *argv[] ) {

  int rank, size;
  int l;
  char name[MPI_MAX_PROCESSOR_NAME];

  // ...

  printf("Hello world from process %d of %d on processor named %s\n", rank, size, name);
  
  // ...
  
  return 0;
}
