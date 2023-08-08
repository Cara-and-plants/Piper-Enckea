#!/bin/bash

#SBATCH -J Stats     # job name
#SBATCH -o log_slurm.ostats1aj  # output and error file name (%j expands to jobID)
#SBATCH -n 28             # total number of tasks requested
#SBATCH -N 1 		  # number of nodes you want to run on	
#SBATCH -p shortq         # queue (partition) -- defq, eduq, gpuq, shortq
#SBATCH -t 12:00:00       # run time (hh:mm:ss) - 12.0 hours in this example.
# Generally needed modules:
module load slurm
module load gcc/7.2.0   
module load blast/2.10.0  
module load fastqc/0.11.8





python /home/chastings/HybPiper/hybpiper_stats.py test_seq_lengths.txt namelist.txt > test_stats.txt


# Exit if mpirun errored:
status=$?
if [ $status -ne 0 ]; then
    exit $status
fi

# Do some post processing.
