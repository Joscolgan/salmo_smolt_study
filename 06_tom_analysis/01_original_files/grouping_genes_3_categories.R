# Read in the ALH genes that are DE between phenotypes but not environments:
phen_not_env_genes<- readRDS("phen_not_env_genes.rds")
length(phen_not_env_genes)
# Read in the ALH genes that are DE between phenotypes and also environments:
bottom_block_genes_phen_AND_env<- readRDS("bottom_block_genes_phen_AND_env.rds")
length(bottom_block_genes_phen_AND_env)
# Merge into one list:
ALH_genes<- c(phen_not_env_genes, bottom_block_genes_phen_AND_env)
length(ALH_genes)
saveRDS(ALH_genes, file="ALH_genes.rds")


# Read in the stress genes that are DE between environments but not phenotypes:
top_block_genes_env_NOT_phen<- readRDS("top_block_genes_env_NOT_phen.rds")
length(top_block_genes_env_NOT_phen)
# Read in the stress genes that are DE between phenotypes and also environments:
middle_block_genes_phen_AND_env<- readRDS("middle_block_genes_phen_AND_env.rds")
length(middle_block_genes_phen_AND_env)
# Merge into one list:
stress_genes<- c(top_block_genes_env_NOT_phen, middle_block_genes_phen_AND_env)
length(stress_genes)
saveRDS(stress_genes, file="stress_genes.rds")

# Read in the osm. env. response genes that are DE between environments but not phenotypes:
bottom_block_genes_env_NOT_phen<- readRDS("bottom_block_genes_env_NOT_phen.rds")
length(bottom_block_genes_env_NOT_phen)
# Read in the stress genes that are DE between phenotypes and also environments:
top_block_genes_phen_AND_env<- readRDS("top_block_genes_phen_AND_env.rds")
length(top_block_genes_phen_AND_env)
# Merge into one list:
osm_env_response_genes<- c(bottom_block_genes_env_NOT_phen, top_block_genes_phen_AND_env)
length(osm_env_response_genes)
saveRDS(osm_env_response_genes, file="osm_env_response_genes.rds")

length(phen_not_env_genes)
length(stress_genes)
length(osm_env_response_genes)

