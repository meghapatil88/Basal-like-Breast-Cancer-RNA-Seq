# 1. Compute the PCA components
pca_result <- prcomp(t(data_matrix[top_100_genes, ]), scale. = TRUE)
pca_data <- as.data.frame(pca_result$x)

# 2. Extract exactly the 1st and 2nd values using [1] and [2]
all_vars <- round(100 * (pca_result$sdev^2 / sum(pca_result$sdev^2)), 1)
pc1_label <- all_vars[1]
pc2_label <- all_vars[2]

# 3. Create the scatter plot safely
plot(pca_data$PC1, pca_data$PC2,
     xlab = paste0("PC1 (", pc1_label, "%)"),
     ylab = paste0("PC2 (", pc2_label, "%)"),
     main = "PCA Space: 57 Meta-Transcriptomics Samples",
     col = "darkorange", 
     pch = 19, 
     cex = 1.3)

# 4. Add the sample labels
text(pca_data$PC1, pca_data$PC2, 
     labels = rownames(pca_data), 
     pos = 3, 
     cex = 0.6)

# 5. plot(pca_data$PC1, pca_data$PC2,
     xlab = paste0("PC1 (", pc1_label, "%)"),
     ylab = paste0("PC2 (", pc2_label, "%)"),
     main = "PCA Space: 57 Meta-Transcriptomics Samples",
     col = "darkorange",
     pch = 19,
     cex = 1.3)

text(pca_data$PC1, pca_data$PC2,
     labels = rownames(pca_data),
     pos = 3,
     cex = 0.6)
