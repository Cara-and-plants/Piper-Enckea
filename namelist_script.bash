#!/bin/bash
# ----------------Parameters---------------------- #
#SBATCH -J Piper     # job name
#SBATCH -o name_script1  # output and error file name (%j expands to jobID)
#SBATCH -n 24             # total number of tasks requested
#SBATCH -N 1 		  # number of nodes you want to run on	
#SBATCH -p shortq         # queue (partition) -- defq, eduq, gpuq, shortq
#SBATCH -t 9:00:00       

# Generally needed modules:
module load slurm
module load gcc/7.2.0   
module load blast/2.10.0  
module load gnuparallel/20200622
module load openmpi



# make name list
for f in *_R1_001_paired.fastq; do (echo ${f/_R1_001_paired.fastq} >> namelist.txt); done 