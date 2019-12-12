# Exploration of Mus Musculus aging dynamics
On the [Tabula Muris Senis](https://github.com/czbiohub/tabula-muris-senis) dataset.  
Data is raw RNA-seq counts
```
https://czb-tabula-muris-senis.s3-us-west-2.amazonaws.com/Data-objects/tabula-muris-senis-facs-official-raw-obj.h5ad
```

<!-- Gene annotations are from
```
ftp://ftp.ncbi.nih.gov/gene/DATA/GENE_INFO/Mammalia/Mus_musculus.gene_info.gz
``` -->

**Pre-processed** as  
- RNA counts normalized to 1.0 per cell

Cell **statistics** are calculated on subsets defined by a unique combination of  
- Animal sex
- Tissue type
- Subtissue type
- Cell type

The largest found fold-changes in count between 3m and 24m age groups are reported in the table.  
**Fold-changes** are filtered as  
- Subset has >= 3 cells
- Mean count are >= 4 max(std. dev) apart
- RNA percentage is >= 1e-12 in both age groups

Here're the largest 20 fold-changes.  
Columns are: tissue, subtissee, cell type, gene
![](./docs/dexpression.png)

All the results can be found either in the last table of [cognitis.ipynb](./cognitis.ipynb) or in [results/merged.csv](./results/merged.csv)
