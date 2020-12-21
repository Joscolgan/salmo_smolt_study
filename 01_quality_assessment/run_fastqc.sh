#!/bin/sh 

#SBATCH --time=24:00:00
#SBATCH --nodes=1
#SBATCH -A uclif011c
#SBATCH -p ProdQ

## Load required modules:
module load java

## Run fastqc for every fastq file:
fastqc -o results/ input/*.gz -t 40
