Uppsala University, Genome Analysis - 1MB462, Project - by Viktor Säde

### Reproducing the results
Running the scripts found in the /code/ without modification requires access to uppmax as well as the relevant /proj/ folders on the uppmax cluster 
The scripts can be run in the following order:
0_data_retrival
1_rna_trimming.sh
1_FastQC_evaluation
2_GenomeAssembly.sh  - Note the results of this scripts are not used in the rest of the process
2_RNA_alignment_SAM (Uses a genome assembly using the command cp /proj/g2021012/2_Eckalbar_2016/additional_data/sel4_NW_015503979.fna.gz ./
2_RNA_alignment_BAM
3_GenomeAnnotation - Note that there are erros in the Braker pipeline and thus the results can't be used.
4_gff_retrival
4_gffread
4_ht_seq
Producing the last results can be done by following the method described in the wiki.
