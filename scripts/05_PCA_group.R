# 1. Assign group labels for visualization 
group <- rep(c("Group1","Group2","Group3"), length.out = nrow(pca_data))

# 2. Define colors corresponding to each group
cols <- c("red","blue","darkgreen")[as.factor(group)]

# 3. Generate PCA plot with samples colored by assigned groups
plot(pca_data$PC1, pca_data$PC2,
     col = cols,
     pch = 19,
     cex = 1.2,
     xlab = paste0("PC1 (", pc1_label, "%)"),
     ylab = paste0("PC2 (", pc2_label, "%)"),
     main = "PCA of Basal-like Breast Cancer Samples")

legend("topright",
       legend = c("Group1","Group2","Group3"),
       col = c("red","blue","darkgreen"),
       pch = 19)

pdf("PCA_plot.pdf", width = 12, height = 8)
