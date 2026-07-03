# 1. Run this line to open a pop-up file picker
# When the window pops up, browse to your Downloads folder and select 'GSE237290_series_matrix.txt'
raw_file_path <- file.choose()

# 2. Read the file while skipping the GEO text header metadata lines
# NCBI GEO matrix files typically have around 30-70 comment lines starting with '!'
data_matrix <- read.delim(raw_file_path, 
                          comment.char = "!", 
                          row.names = 1, 
                          check.names = FALSE)

# 3. Verify the file loaded successfully in your console
head(data_matrix)
dim(data_matrix)
