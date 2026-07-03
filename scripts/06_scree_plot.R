# Generate scree plot showing variance explained by each principal component
plot(var_explained,
     type = "b",
     pch = 19,
     xlab = "Principal Component",
     ylab = "Variance Explained (%)",
     main = "Scree Plot")

# save the scree plot as a pdf
pdf("Scree_Plot.pdf", width = 8, height = 6)
plot(var_explained, type="b", pch=19)
dev.off()

