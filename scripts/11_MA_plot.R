# Generate the MA plot
plot(results$AveExpr,
     results$logFC,
     pch = 20,
     col = "grey",
     xlab = "Average Expression (A)",
     ylab = "Log Fold Change (M)",
     main = "MA Plot")

# Identify significant differential expressed genes
sig <- results$adj.P.Val < 0.05 & abs(results$logFC) > 1

# Highlight significant genes in red
points(results$AveExpr[sig],
       results$logFC[sig],
       col = "red",
       pch = 20)

# Add a reference line at log fold change = 0
abline(h = 0, col = "blue", lwd = 2)

# Save the MA plot as a pdf file
pdf("MA_Plot.pdf", width = 8, height = 6)

