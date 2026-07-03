# 1. Install and load the heatmap package if not already done
if(!require("pheatmap")) install.packages("pheatmap")
library(pheatmap)

# 2. Find the top 100 most variable genes/features across all 57 samples
row_variances <- apply(data_matrix, 1, var)
top_100_genes <- head(order(row_variances, decreasing = TRUE), 100)

# 3. Create a clean heatmap of these top features
pheatmap(data_matrix[top_100_genes, ], 
         scale = "row", 
         show_rownames = FALSE, 
         main = "Meta-Transcriptomics Expression Profiling (Top 100 Features)")

# 4. This code recreates and saves the file directly as a high-quality PNG
pheatmap(data_matrix[top_100_genes, ], 
         scale = "row", 
         show_rownames = FALSE, 
         main = "Meta-Transcriptomics Expression Profiling (Top 100 Features)",
         filename = "meta_transcriptomics_heatmap.png", 
         width = 10, 
         height = 8)
