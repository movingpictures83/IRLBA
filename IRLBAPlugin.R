library(dplyr)
library(Seurat)
library(patchwork)


input <- function(inputfile) {
   pbmc <<- readRDS(inputfile)  
}

run <- function() {}

output <- function(outputfile) {
pbmc <- RunPCA(pbmc, features = VariableFeatures(object = pbmc))
saveRDS(pbmc, outputfile)
}


