#!/bin/bash

#SBATCH -J Piper_BMGE     # job name
#SBATCH -o log_slurm.oBMGE2022j  # output and error file name (%j expands to jobID)
#SBATCH -n 28             # total number of tasks requested
#SBATCH -N 1 		  # number of nodes you want to run on	
#SBATCH -p shortq         # queue (partition) -- defq, eduq, gpuq, shortq
#SBATCH -t 12:00:00       # run time (hh:mm:ss) - 12.0 hours in this example.

# Generally needed modules:
module load slurm
module load bioinformatics

module load gnuparallel/20200622



cd scratch/Final_set_Mega353/Fulldataset/CH2amalagocomplex/FNAfilesamalago/aligned/


# run BMGE for fasta for gene trees for RAxml and astral

for f in *.FNA;

do java -jar ~/BMGE-1.12/BMGE.jar -i ${f} -t DNA -of t${f}.fasta;

done

#run BMGE for NEXUS- raXML, MeBAyes
#for f in *.FNA;

#do java -jar ~/BMGE-1.12/BMGE.jar -i ${f} -t DNA -on t${f}.nex;

#done
