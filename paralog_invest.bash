#!/bin/bash

#SBATCH -J Piper     # job name
#SBATCH -o log_slurm.oparalog_investj  # output and error file name (%j expands to jobID)
#SBATCH -n 28             # total number of tasks requested
#SBATCH -N 1 		  # number of nodes you want to run on	
#SBATCH -p shortq         # queue (partition) -- defq, eduq, gpuq, shortq
#SBATCH -t 12:00:00       # run time (hh:mm:ss) - 12.0 hours in this example.
# Generally needed modules:
module load slurm
module load gcc/7.2.0   
module load gnuparallel/20200622
module load openmpi

while read i
do
echo $i
python /home/chastings/HybPiper/paralog_investigator.py $i
done < namelist.txt





