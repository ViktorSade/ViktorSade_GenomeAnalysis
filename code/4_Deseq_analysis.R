
# Load directory containing the htseq-count files
directory <- "C:/Users/vikto/Documents/GenomeAnalysis/expression_analysis/HtSeq/" # Needs to be changed to the correct HtSeq location depending on location of the directory

# Create a list of the file names from the directory
sampleFiles <- list.files(directory)

# Label each file with the proper condition 
conditions <- c("Forelimb","Forelimb","Hindlimb","Hindlimb")

#  
sampleTable <- data.frame(sampleName = sampleFiles, fileName = sampleFiles, condition = conditions)
sampleTable$condition <- factor(sampleTable$condition)

library(DESeq2)

ddsHTSeq <- DESeqDataSetFromHTSeqCount(sampleTable = sampleTable, directory = directory, design = ~ condition)


dds <- DESeq(ddsHTSeq)
res <- results(dds)

p_value_subset <- subset(res,pvalue<0.05)
names <- p_value_subset@rownames

dds_reg <- rlog(dds)
pheatmap(assay(dds[names]),scale = 'row')


vsd <- varianceStabilizingTransformation(dds, blind=FALSE)
plotPCA(vsd)
