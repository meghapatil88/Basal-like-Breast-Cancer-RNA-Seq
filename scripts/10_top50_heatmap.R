# Select the top50 differentially expressed genes
top50 <- rownames(results)[1:50]

# Generate a heatmap of the top50 differentially expressed genes
heatmap(as.matrix(data_matrix[top50, ]),
        scale = "row")

# Save the heatmap as a pdf file
pdf("Top50_Heatmap.pdf", width = 10, height = 8)

# Generate the heatmap for pdf output
heatmap(as.matrix(data_matrix[top50, ]),
        scale = "row")


