#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 08:00:00
#SBATCH -J GenomeAssembly
#SBATCH --mail-type=ALL
#SBATCH --mail-user Viktor.Sade.7837@student.uu.se

# Modules
module load bioinfo-tools
module load soapdenovo

#
/sw/apps/bioinfo/SOAPdenovo/2.04-r240/rackham/bin/SOAPdenovo-127mer all -s config_file -K 49 -R -o graph_prefix 1>ass.log 2>ass.err
