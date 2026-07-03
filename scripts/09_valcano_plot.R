# Generate volcano plot of differential expression results
plot(results$logFC,
     -log10(results$P.Value),
     pch = 20,
     col = "grey",
     xlab = "log Fold Change",
     ylab = "-log10(P-value)",
     main = "Volcano Plot")

# Identify significantly differentially expressed genes
sig <- results$adj.P.Val < 0.05 &
       abs(results$logFC) > 1

# Highlight significant genes in red
points(results$logFC[sig],
       -log10(results$P.Value[sig]),
       col = "red",
       pch = 20)

# Save the volcano plot as a pdf
pdf("Volcano_Plot.pdf", width = 8, height = 6)

# Count the number of significant differentially expressed gene
sum(results$adj.P.Val < 0.05 & abs(results$logFC) > 1, na.rm = TRUE)

# Export differential expression results to a CSV file
write.csv(results,
          "Differential_Expression_Results.csv",
          row.names = TRUE)
