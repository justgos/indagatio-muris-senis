# Exploration of the Mus Musculus aging dynamics
On the [Tabula Muris Senis](https://github.com/czbiohub/tabula-muris-senis) dataset.  
Data is raw RNA-seq counts from
```
https://czb-tabula-muris-senis.s3-us-west-2.amazonaws.com/Data-objects/tabula-muris-senis-facs-official-raw-obj.h5ad
```

<!-- Gene annotations are from
```
ftp://ftp.ncbi.nih.gov/gene/DATA/GENE_INFO/Mammalia/Mus_musculus.gene_info.gz
``` -->

**Pre-processed** as  
- RNA counts normalized to 1.0 per cell

Cell **statistics** (expression mean and std.dev) are calculated on subsets defined by a unique combination of  
- Animal sex
- Tissue type
- Subtissue type
- Cell type

Expression **fold-changes** computed between subsets of the pairs of age groups are filtered as  
- Subset has >= 3 cells
- Mean expression values are >= 4 max(std. dev) apart
- Expression is >= 1e-12 in both age groups

Here're the largest 20 fold-changes.  
Columns are: tissue, subtissue, cell type, gene
![](./docs/dexpression.png)

All the results can be found either in the last table of [cognitis.ipynb](./cognitis.ipynb) or in [results/merged.csv](./results/merged.csv).  
All of them are marked as _low_ confidence as the expression means were only between 4 to 5 max(std. dev) apart
