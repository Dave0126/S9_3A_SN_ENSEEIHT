source utils.sh
echo BENCHMARKING THE METHODS
# you can modify these values
p=2
q=2
P=$((p*q))
#generate_hostfile $P

export OMP_NUM_THREADS=1
export MKL_NUM_THREADS=1

# proper benchmark <--- this could be a TODO for students ? (as in, show weak scaling and/or strong scaling)
#mpi_options="-hostfile hostfiles/hostfile.$P.txt"
mpi_options="-platform platforms/cluster_crossbar.xml -hostfile hostfiles/cluster_hostfile.txt -np 4"
b=2
iter=5
traces="check_traces"
out="check_outputs"
csv="check.csv"
echo m,n,k,b,p,q,algo,lookahead,gflops > $csv
for i in 1
do
  n=$((i*b))
  m=$n
  k=$n
  la=0
  options="-c"
  for algo in p2p bcast
  do
    	run
  done
  for la in $(seq 1 $((n/b)))
  do 
  	algo="p2p-i-la"
  	options="-c -l $la"
    	run
  done
done
