# Piper-Enckea
Documentation of research into the phylogenetics of Piper, section Enckea

The scripts included here are those used to run the HybPiper pipeline on a computing cluster that using a SLURM queue.  For deeper discussion of the functionality of the scripts, please see the HybPiper pipeline documentation and tutorials at https://github.com/mossmatters.

H1stats.bash- This runs a python script that summarizes the results of "reads_first.py"

MegaHyb1.bash- This script runs the main script of HybPiper "reads_first.py"

Retrieve.bash- This retrieves gene sequences from each sample from the data produced by the "reads_first.py" 

bmge2021.bash- This runs the program BMGE

intron.bash- This retrieves intron data from the HybPiper data 

mafft.bash- This runs the program mafft

namelist_script.bash- This creates a namelist from the sequence data so that each file name in captured correctly

paralog_invest.bash- This script summarizes paralog data from the HybPiper output

seq_length.bash- This collects the legnth of each gene and sequence retrieved using HybPiper.  This is necessary for H1stats.bash.

