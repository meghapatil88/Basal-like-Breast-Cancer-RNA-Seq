# Install Bioconductors (if not already installed)
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

# Install and load the limma package
BiocManager::install("limma")
library(limma)

# Create the experimental design matrix based on cluster assisgments
design <- model.matrix(~group)

# Fit a linear model to the normalized expression data
fit <- lmFit(data_matrix, design)

# Apply empirical Bayes moderation to improve statistical estimates
fit <- eBayes(fit)

# Extract all differentially expressed genes for the cluster comparison
results <- topTable(fit,
                    coef = 2,
                    number = Inf)
