#!/bin/sh 

#SBATCH --time=24:00:00
#SBATCH --nodes=1
#SBATCH -A uclif011c
#SBATCH -p ProdQ

## Load required modules:
module load java

## Run salmon for each sample:
for file in input/*_1.fq.gz
do
read_pair="$(echo "$file" | cut -d '/' -f 2 | cut -d '_' -f 1,2)"; 
salmon quant -i ./data/ensembl_run_index \
-l A \
-1 "$file" -2 input/"$read_pair"_2.fq.gz \
-p 8 --validateMappings -o results/"$read_pair"
done
