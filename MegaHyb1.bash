#!/bin/bash
# ----------------Parameters---------------------- #
#SBATCH -J HyBPiper     # job name
#SBATCH -o Try_mega2  # output and error file name (%j expands to jobID)
#SBATCH -n 24             # total number of tasks requested
#SBATCH -N 1 		  # number of nodes you want to run on	
#SBATCH -p defq         # queue (partition) -- defq, eduq, gpuq, shortq
#SBATCH -t 24:00:00       

# Generally needed modules:
module load slurm
module load gcc/7.2.0   
module load blast/2.10.0  
module load gnuparallel/20200622
module load openmpi

# Execute the program

while read name 
do /home/chastings/HybPiper/reads_first.py -b /home/chastings/scratch/Final_set_Mega353/mega353.fasta --bwa -r "$name"_R*_paired_001.fastq --prefix "$name" --cov_cutoff 3 --cpu 24 
done < namelist.txt
