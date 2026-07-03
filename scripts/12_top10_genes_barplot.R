# Select the top 10 differentially expressed genes based on absolute log fold change
top10 <- head(results[order(abs(results$logFC), decreasing = TRUE), ], 10)

# Generate a bar plot of the top 10 differentially expressed genes
barplot(abs(top10$logFC),
        names.arg = rownames(top10),
        las = 2,
        col = "steelblue",
        ylab = "|logFC|",
        main = "Top 10 Differentially Expressed Genes")

# Save the bar plot as a pdf file
pdf("Top10_Genes_Barplot.pdf", width = 10, height = 6)

# Export the top 10 differentially expressed genes to a CSV file
write.csv(top10, "Top10_DE_Genes.csv")
