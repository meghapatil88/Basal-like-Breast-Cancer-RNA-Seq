# 1. Run PCA on the transposed matrix (samples as rows)
pca_result <- prcomp(t(data_matrix[top_100_genes, ]), scale. = TRUE)

# 2. Extract the principal component coordinates
pca_data <- as.data.frame(pca_result$x)

# 3. Calculate percentage of variance explained by PC1 and PC2
var_explained <- round(100 * (pca_result$sdev^2 / sum(pca_result$sdev^2)), 1)

# 4. Draw the PCA Plot
plot(pca_data$PC1, pca_data$PC2,
     xlab = paste0("PC1 (", var_explained[1], "%)"),
     ylab = paste0("PC2 (", var_explained[2], "%)"),
     main = "PCA Space: 57 Meta-Transcriptomics Samples",
     col = "darkorange", 
     pch = 19, 
     cex = 1.3)

# 5. Add sample text labels above each point
text(pca_data$PC1, pca_data$PC2, 
     labels = rownames(pca_data), 
     pos = 3, 
     cex = 0.6)
