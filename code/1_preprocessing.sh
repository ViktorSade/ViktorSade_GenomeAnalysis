#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 00:10:00
#SBATCH -J RNA_quality_control
#SBATCH --mail-type=ALL
#SBATCH --mail-user Viktor.Sade.7837@student.uu.se

# Load modules
module load bioinfo-tools
module load FastQC

# Commands
fastqc -o /home/viktosd/Genome_Analysis/ViktorSade_GenomeAnalysis/analyses/1_preprocessing/fastqc_raw/ /home/viktosd/Genome_Analysis/ViktorSade_GenomeAnalysis/data/raw_data/rna_data/*
