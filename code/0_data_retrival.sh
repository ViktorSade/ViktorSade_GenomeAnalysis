#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 00:10:00
#SBATCH -J RNA_quality_control
#SBATCH --mail-type=ALL
#SBATCH --mail-user Viktor.Sade.7837@student.uu.se

for i in /proj/g2021012/2_Eckalbar_2016/sel4/wgs_data/*
do
	ln -s $i /home/viktosd/Genome_Analysis/ViktorSade_GenomeAnalysis/data/raw_data/wgs_data/
done 
