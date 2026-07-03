# Basal-like Breast Cancer RNA-seq Analysis

**GSE237290 - Differential Expression & Visualization**

Comprehensive RNA-sequencing analysis of basal-like breast cancer samples (GSE237290) with differential expression testing, statistical analysis, and publication-ready visualizations.

---

## 📋 Project Overview

### Dataset
- **GEO Accession:** GSE237290
- **Study:** Basal-like Breast Cancer Expression Profiling
- **Samples:** 57
- **Source:** NCBI Gene Expression Omnibus (GEO)
- **Format:** Series Matrix (processed/normalized)

---

## 🎯 Key Findings

| Metric | Value |
|--------|-------|
| **Total genes analyzed** | ~20,000+ |
| **DE genes (adj.P.Val < 0.05, \|logFC\| > 1)** | Identified |
| **Significant threshold** | Adjusted P-value < 0.05 |
| **Fold change cutoff** | \|logFC\| > 1 |
| **Variance explained (PC1+PC2)** | From scree plot |

---

## 📂 Repository Structure

```
Basal-like-Breast-Cancer-RNA-seq/
│
├── .gitignore
├── README.md
│
├── scripts/
│   ├── 01_Load_file.R
│   ├── 02_install_packages.R
│   ├── 03_PCA_plot.R
│   ├── 04_Top100_genes_PCA.R
│   ├── 05_PCA_group.R
│   ├── 06_scree_plot.R
│   ├── 07_kmeans_clustering.R
│   ├── 08_limma_analysis.R
│   ├── 09_volcano_plot.R
│   ├── 10_top50_heatmap.R
│   ├── 11_MA_plot.R
│   └── 12_top10_genes_barplot.R
│
├── data/
│   └── GSE237290_series_matrix.txt
│
├── analysis/
│   └── Differential_Expression_Results.csv
│
└── plots/
    ├── pheatmap_top100_genes.png
    ├── pca_plot.png
    ├── pca_cluster_plot.png
    ├── scree_plot.png
    ├── volcano_plot.png
    ├── ma_plot.png
    ├── top50_heatmap.png
    └── top10_barplot.png

```

---

## 🛠️ Tools & Technologies

- **R** — Statistical analysis & visualization
- **limma** (Bioconductor) — Differential expression testing
- **pheatmap** — Publication-quality heatmaps
- **prcomp()** — Principal Component Analysis
- **kmeans()** — Sample clustering

---

## 📊 Visualizations

1. **Pheatmap (Top 100 Variable Genes)** — Expression patterns across 57 samples

<img width="990" height="1800" alt="Image" src="https://github.com/user-attachments/assets/0b4abb3d-9c0e-457a-a688-8ca51da0708f" />

---
2. **PCA Plot** — PC1 vs PC2 with variance explained

<img width="1363" height="677" alt="Image" src="https://github.com/user-attachments/assets/6d455307-e50c-4684-a3a4-7a8ef2c4500b" />

---
3. **PCA cluster Plot**

<img width="1363" height="677" alt="Image" src="https://github.com/user-attachments/assets/362eb189-a273-40c8-969d-c2e87c184e07" />

---
4. **Scree Plot** — Cumulative variance by principal components

<img width="1200" height="900" alt="Image" src="https://github.com/user-attachments/assets/14ace69a-b518-4ea4-b6e7-39a8735c56dd" />  

---
5. **Volcano Plot** — logFC vs -log10(P-value) significance

<img width="683" height="1450" alt="Image" src="https://github.com/user-attachments/assets/1356a959-7e1b-47e6-8d97-7050e1027b46" />

---
6. **MA Plot** — Average expression vs log fold change


<img width="1200" height="900" alt="Image" src="https://github.com/user-attachments/assets/4de4ca65-a72f-4d05-9788-20a7efaf6770" />

---
7. **Heatmap (Top 50 DE Genes)** — Differentially expressed genes


<img width="1500" height="1200" alt="Image" src="https://github.com/user-attachments/assets/8e52bca5-b74a-48fc-a1f5-e973e443e78e" />

---
8. **Barplot (Top 10 DE Genes)** — Highest impact genes by |logFC|

    
<img width="1500" height="900" alt="Image" src="https://github.com/user-attachments/assets/57fc3b64-1250-4810-b7c1-b1a46667ec5f" />

---

## 🔍 Statistical Analysis

### Differential Expression Testing
- **Method:** limma (linear models + empirical Bayes)
- **Model:** ~group (sample group comparison)
- **Coefficient:** 2
- **P-value adjustment:** Benjamini-Hochberg (FDR control)

### Gene Significance Criteria
- **Adjusted P-value:** < 0.05
- **Log Fold Change:** |logFC| > 1 (at least 2-fold change)

### Sample Clustering
- **Method:** k-means on PC1 & PC2
- **Centers:** 2-3 groups
- **Basis:** PCA-reduced sample space

---

## 📈 Output Files

### Analysis Table
- `Differential_Expression_Results.csv` — All genes with logFC, P-values, adj.P.Val

### Visualizations
- 8 PNG plots (pheatmap, PCA, PCA cluster, scree, volcano, MA, heatmap, barplot)

---

## 👤 Author

**Megha Patil**
- MSc Biotechnology (Bioinformatics)
- RNA-seq Analysis | Differential Expression | Data Visualization
- GitHub: [@meghapatil88](https://github.com/meghapatil88)
- Location: Bengaluru, India

---

## 📄 License

MIT License — Open source for educational and research purposes.

---

## 🔗 Related Projects

- [WES Variant Calling Pipeline](https://github.com/meghapatil88/WES-Variant-Calling-Pipeline)
- [WGS Variant Calling Pipeline](https://github.com/meghapatil88/WGS-Variant-Calling-Pipeline)

---

**Analysis completed:** July 2026  
**Last updated:** July, 2026
