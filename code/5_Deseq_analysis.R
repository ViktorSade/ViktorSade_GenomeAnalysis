
# Load directory containing the htseq-count files
directory <- "C:/Users/vikto/Documents/GenomeAnalysis/expression_analysis/HtSeq/"

# Create a list of the file names from the directory
sampleFiles <- list.files(directory)

# Label each file with the proper condition 
conditions <- c("Forelimb","Forelimb","Hindlimb","Hindlimb")

# Create the sample table and factor levels based on condition 
sampleTable <- data.frame(sampleName = sampleFiles, fileName = sampleFiles, condition = conditions)
sampleTable$condition <- factor(sampleTable$condition)

# Load DEseq2
library(DESeq2)

# Create the DEseq data set
ddsHTSeq <- DESeqDataSetFromHTSeqCount(sampleTable = sampleTable, directory = directory, design = ~ condition)

# Perform the differential expression analysis
dds <- DESeq(ddsHTSeq)

# Generate the result table
res <- results(dds)

# Select the subset with a significant p-value
p_value_subset <- subset(res,pvalue<0.05)

# Select the names of all genes with significant p-value
names <- p_value_subset@rownames

# Load the plotting software
library(pheatmap)

# Regularize the data
dds_reg <- rlog(dds)

# Create a heatmap based on the names
pheatmap(assay(dds[names]),scale = 'row')

# Perform a PCA on the data
vsd <- varianceStabilizingTransformation(dds, blind=FALSE)
plotPCA(vsd)
