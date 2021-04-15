#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:25:00
#SBATCH -J RNA_trimming
#SBATCH --mail-type=ALL
#SBATCH --mail-user Viktor.Sade.7837@student.uu.se

# Load modules
module load bioinfo-tools
module load trimmomatic

# Trimming 
cd /home/viktosd/Genome_Analysis/ViktorSade_GenomeAnalysis/data/trimmed_data/
java -jar /sw/apps/bioinfo/trimmomatic/0.36/rackham/trimmomatic-0.36.jar PE /home/viktosd/Genome_Analysis/ViktorSade_GenomeAnalysis/data/raw_data/rna_data/sel4_SRR1719266.1.fastq.gz /home/viktosd/Genome_Analysis/ViktorSade_GenomeAnalysis/data/raw_data/rna_data/sel4_SRR1719266.2.fastq.gz sel4_SRR1719266_1P.fq.gz sel4_SRR1719266_1U.fq.gz sel4_SRR1719266_2P.fq.gz sel4_SRR1719266_2U.fq.gz ILLUMINACLIP:/sw/apps/bioinfo/trimmomatic/0.36/rackham/adapters/TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

