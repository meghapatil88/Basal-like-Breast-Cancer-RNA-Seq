# Perform K-means clustering using the first two principal components
clusters <- kmeans(pca_data[,c("PC1","PC2")], centers = 3)

# Visualize clusters on the PCA scatter plot
plot(pca_data$PC1, pca_data$PC2,
     col = clusters$cluster,
     pch = 19)

# Set a random seed to ensure reproducibility
set.seed(123)

# Perform K-means clustering with two clusters
clusters <- kmeans(pca_data[,c("PC1","PC2")], centers = 2)

# Display the number of samples assigned to each cluster
table(clusters$cluster)

# Create a sample metdata containing cluster assignments
sample_info <- data.frame(
  row.names = colnames(count_matrix),
  Group = factor(clusters$cluster)
)

# Inspect the expression matrix
dim(data_matrix)
head(data_matrix[,1:5])
summary(as.vector(as.matrix(data_matrix)))

# Store cluster assignments as a factor for downstream analysis
group <- factor(clusters$cluster)
