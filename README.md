# _Salmo_ smoltification RNA-Seq study   

Context & citation:  
This repository contains scripts for the analysis of life-history genes in the brown trout _Salmo trutta_.

For the present analysis, the following steps were taken:  
### 1) Quality assessment:  
Quality of raw Illumina reads was assessed using [FastQC](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/).  
### 2) Transcript quantification:  
Transcript quantification was performed using [salmon](https://salmon.readthedocs.io/en/latest/salmon.html).  
### 3) Differential expression analyis:  
Gene-level counts were calculated using [tximport](https://bioconductor.org/packages/release/bioc/html/tximport.html).  
Differential expression analysis was performed using [DESeq2](https://bioconductor.org/packages/release/bioc/html/DESeq2.html).  
### 4) Gene Ontology Enrichment analysis:
For differentially expressed genes identified between and across treatments, Gene Ontology enrichment analysis was performed using [topGO](https://bioconductor.org/packages/release/bioc/html/topGO.html).  
### 5) Plots:  
Plots, such as barcharts and heatmaps, were generated using [ggplot2](https://ggplot2.tidyverse.org/).  
For plots, such as Venn diagrams, [Eulerr](https://cran.r-project.org/web/packages/eulerr/index.html) was used.  

Some scripts contained in this repository are modifications of scripts used by [Colgan et el. (2019, Molecular Ecology)](https://onlinelibrary.wiley.com/doi/full/10.1111/mec.15047). If reusing scripts within the present repository, please cite the original source as well and follow instructions on reuse.
The original scripts are publically available at: https://github.com/wurmlab/Bter_neonicotinoid_exposure_experiment  

