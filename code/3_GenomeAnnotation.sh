#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 2:00:00
#SBATCH -J GenomeAnnotation
#SBATCH --mail-type=ALL
#SBATCH --mail-user Viktor.Sade.7837@student.uu.se

Â#Moduls
module load bioinfo-tools
module load braker/2.1.1_Perl5.24.1
module load augustus/3.2.3_Perl5.24.1
module load bamtools/2.5.1
module load blast/2.9.0+
module load GenomeThreader/1.7.0
module load samtools/1.8
module load GeneMark/4.33-es

module load cdbfasta
module load diamond
module load perl_modules
module load biopython

Â# Script
# Data retrival ln -s /proj/g2021012/2_Eckalbar_2016/additional_data/sel4_NW_015503979.fna.gz /home/viktosd/Genome_Analysis/ViktorSade_GenomeAnalysis/data/wgs_assembly/
# Ran in home/viktosd directory
# source $AUGUSTUS_CONFIG_COPY
# chmod a+w -R /home/viktosd/augustus_config/species/
# cp -vf /sw/bioinfo/GeneMark/4.33-es/snowy/gm_key $HOME/.gm_key
# gunzip -f /home/viktosd/Genome_Analysis/ViktorSade_GenomeAnalysis/data/wgs_assembly/sel4_NW_015503979.fna.gz

cd /home/viktosd/Genome_Analysis/ViktorSade_GenomeAnalysis/data/bamfiles/
braker.pl --species=M_natalensis --genome=/home/viktosd/Genome_Analysis/ViktorSade_GenomeAnalysis/data/ref_assembly/sel4_NW_015503979.fna --bam=sel4_SRR1719013Aligned.sortedByCoord.out.bam,sel4_SRR1719014Aligned.sortedByCoord.out.bam,sel4_SRR1719015Aligned.sortedByCoord.out.bam,sel4_SRR1719016Aligned.sortedByCoord.out.bam,sel4_SRR1719017Aligned.sortedByCoord.out.bam,sel4_SRR1719018Aligned.sortedByCoord.out.bam,sel4_SRR1719204Aligned.sortedByCoord.out.bam,sel4_SRR1719206Aligned.sortedByCoord.out.bam,sel4_SRR1719207Aligned.sortedByCoord.out.bam,sel4_SRR1719208Aligned.sortedByCoord.out.bam,sel4_SRR1719209Aligned.sortedByCoord.out.bam,sel4_SRR1719211Aligned.sortedByCoord.out.bam,sel4_SRR1719212Aligned.sortedByCoord.out.bam,sel4_SRR1719213Aligned.sortedByCoord.out.bam,sel4_SRR1719214Aligned.sortedByCoord.out.bam,sel4_SRR1719241Aligned.sortedByCoord.out.bam,sel4_SRR1719242Aligned.sortedByCoord.out.bam \
 --AUGUSTUS_CONFIG_PATH=/home/viktosd/augustus_config --AUGUSTUS_BIN_PATH=/sw/bioinfo/augustus/3.4.0/snowy/bin --AUGUSTUS_SCRIPTS_PATH=/sw/bioinfo/augustus/3.4.0/snowy/scripts --GENEMARK_PATH=/sw/bioinfo/GeneMark/4.33-es/snowy
