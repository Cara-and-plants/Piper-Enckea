#!/bin/bash

#SBATCH -J Mafft     # job name
#SBATCH -o log_slurm.oMAFFTch2Fullj  # output and error file name (%j expands to jobID)
#SBATCH -n 28             # total number of tasks requested
#SBATCH -N 1 		  # number of nodes you want to run on	
#SBATCH -p shortq         # queue (partition) -- defq, eduq, gpuq, shortq
#SBATCH -t 12:00:00       # run time (hh:mm:ss) - 12.0 hours in this example.
# Generally needed modules:
module load slurm
module load gcc/7.2.0   
module load gnuparallel/20200622
module load mafft






# create a directory for alignments




#run mafft
parallel --eta "mafft --localpair --maxiterate 1000 scratch/Final_set_Mega353/Fulldataset/CH2amalagocomplex/FNAfilesamalago/{}.FNA > scratch/Final_set_Mega353/Fulldataset/CH2amalagocomplex/FNAfilesamalago/aligned/{}.FNA" :::: genenames.txt

#parallel --eta "mafft --localpair --maxiterate 1000 scratch/Final_set_Mega353/Fulldataset/genesmorethan75/{}.FNA > scratch/Final_set_Mega353/Fulldataset/genesmorethan75/aligned/{}.FNA" :::: genenames.txt

#parallel --eta "mafft --localpair --maxiterate 1000 scratch/Final_set_Mega353/plastomeHyb/bamFiles/{}.fastq > scratch/Final_set_Mega353/plastomeHyb/bamFiles/aligned/{}.fastq" :::: namelist_plast2.txt


#parallel --eta "mafft --localpair --maxiterate 1000 --seed scratch/Final_set_Mega353/plastomes/Piper_amalago_Angel_2292.fasta scratch/Final_set_Mega353/plastomes/{}.path_sequence.fasta > scratch/Final_set_Mega353/plastomes/aligned/{}.fasta" :::: namelist_plast2.txt
