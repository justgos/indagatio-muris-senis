# Exploration of Mus Musculus aging dynamics
On the [Tabula Muris Senis](https://github.com/czbiohub/tabula-muris-senis) dataset.  
Data is raw RNA-seq counts
```
https://czb-tabula-muris-senis.s3-us-west-2.amazonaws.com/Data-objects/tabula-muris-senis-facs-official-raw-obj.h5ad
```
Pre-processed as  
- RNA counts normalized to 1.0 per cell
- Cells with < 5 non-zero RNA types are discarded

Cell statistics are calculated on subsets defined by a cartesian product of  
- Animal sex
- Tissue type
- Subtissue type
- Cell type

The largest found fold-changes in count between 3m and 24m age groups are reported in the table.  
Fold-changes are filtered as  
- Subset has >= 3 cells
- Mean count are >= 4 max(std. dev) apart
- RNA percentage is >= 1e-8 in both age groups

Top age for males and females available in the dataset is different.  
To avoid mixing the age groups, the analysis is done only for the highest available age group - for 24m males.

| Sex | Tissue | Subtissue | Cell type | Gene | Expression at 3m | Expression at 24m | Max std. dev | $\Delta$Expression |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| male | Brain_Non-Myeloid | Striatum | neuron | Dtd1 | 0.0002861184 | 4.1273054e-08 | 2.5033267e-05 | 6932.161 |
| male | Brain_Non-Myeloid | Striatum | neuron | Elavl2 | 0.00012328949 | 2.0898156e-08 | 2.8100445e-05 | 5899.257 |
| male | Brain_Non-Myeloid | Striatum | neuron | Cadm3 | 7.9722005e-05 | 2.2091925e-08 | 1.7087055e-05 | 3608.4858 |
| male | Brain_Non-Myeloid | Striatum | neuron | Sh3bgrl | 0.0001443001 | 8.156506e-08 | 3.4368462e-05 | 1769.1193 |
| male | Brain_Non-Myeloid | Striatum | neuron | Bcap29 | 0.00013918265 | 8.254611e-08 | 3.1319378e-05 | 1686.0996 |
| male | Brain_Non-Myeloid | Striatum | neuron | Slc9a6 | 6.328598e-05 | 4.418385e-08 | 8.817119e-06 | 1432.3005 |
| male | Brain_Non-Myeloid | Striatum | neuron | Ube2j2 | 3.5377798e-05 | 4.1273054e-08 | 5.2288055e-06 | 857.1438 |
| male | Heart | RV | smooth muscle cell | Zfp207 | 0.00071840367 | 8.7702676e-07 | 0.00012388073 | 819.13446 |
| male | Brain_Non-Myeloid | Striatum | neuron | Acsl3 | 6.4534244e-05 | 8.254611e-08 | 8.446491e-06 | 781.78687 |
| male | Brain_Non-Myeloid | Striatum | neuron | Synrg | 3.728951e-05 | 8.83677e-08 | 3.0040858e-06 | 421.9764 |
| male | Brain_Non-Myeloid | Striatum | neuron | Jkamp | 0.00033710073 | 8.4350177e-07 | 6.400505e-05 | 399.6439 |
| male | Brain_Non-Myeloid | Striatum | neuron | Exosc4 | 0.00015662955 | 4.478376e-07 | 3.3703378e-05 | 349.74554 |
| male | Brain_Non-Myeloid | Striatum | neuron | Smap1 | 5.999808e-05 | 2.3570402e-07 | 1.4144125e-05 | 254.54732 |
| male | Brain_Non-Myeloid | Striatum | neuron | Atox1 | 4.2368523e-05 | 1.7112446e-07 | 4.4954927e-06 | 247.58751 |
| male | Brain_Non-Myeloid | Striatum | neuron | Stoml1 | 0.000111261696 | 4.7453776e-07 | 1.4808117e-05 | 234.46283 |
| male | Brain_Non-Myeloid | Striatum | neuron | Cd47 | 0.00019630231 | 1.0488387e-06 | 3.7241916e-05 | 187.16139 |
| male | Brain_Non-Myeloid | Striatum | neuron | Atcay | 8.575688e-05 | 4.7453776e-07 | 1.9027295e-05 | 180.7163 |
| male | Brain_Non-Myeloid | Striatum | neuron | Pdcd10 | 3.394306e-05 | 2.0636529e-07 | 7.0924543e-06 | 164.47968 |
| male | Brain_Non-Myeloid | Striatum | neuron | Fhl1 | 0.000115500035 | 7.42915e-07 | 2.7099863e-05 | 155.46849 |
| male | Brain_Non-Myeloid | Striatum | neuron | Lpcat4 | 3.6690024e-05 | 2.889114e-07 | 2.5926788e-06 | 126.9936 |
| male | Brain_Non-Myeloid | Striatum | neuron | Fbxo25 | 4.3803262e-05 | 3.5375484e-07 | 6.652513e-06 | 123.82343 |
| male | Heart | RV | smooth muscle cell | Maged1 | 0.00084342185 | 6.826476e-06 | 1.6721382e-05 | 123.55156 |
| male | Brain_Non-Myeloid | Striatum | neuron | Hars | 0.00018573289 | 1.5857471e-06 | 2.3930805e-05 | 117.12635 |
| male | Brain_Non-Myeloid | Striatum | neuron | Actr3b | 3.2866603e-05 | 2.889114e-07 | 3.0874767e-06 | 113.75976 |
| male | Brain_Non-Myeloid | Striatum | neuron | Aamp | 0.00019391172 | 1.7142871e-06 | 2.8786346e-05 | 113.11501 |
| male | Brain_Non-Myeloid | Striatum | neuron | Vps35 | 0.000107317675 | 9.685047e-07 | 1.877775e-05 | 110.80748 |
| male | Brain_Non-Myeloid | Striatum | neuron | Zc3h15 | 0.00028706118 | 2.650307e-06 | 5.4613567e-05 | 108.31239 |
| male | Pancreas | Exocrine | pancreatic stellate cell | Tff3 | 3.5355274e-07 | 3.7980408e-05 | 5.6759077e-06 | 107.42471 |
| male | Brain_Non-Myeloid | Striatum | neuron | D4Wsu53e | 0.00016013854 | 1.5501123e-06 | 3.3095617e-05 | 103.30764 |
| male | Brain_Non-Myeloid | Striatum | neuron | Psma5 | 0.00022042711 | 2.3334696e-06 | 4.299937e-05 | 94.46321 |
| male | Heart | RV | smooth muscle cell | Vapb | 9.223807e-05 | 1.0026508e-06 | 5.515085e-06 | 91.99412 |
| male | Heart | RV | smooth muscle cell | Foxc1 | 0.00015140341 | 1.7540535e-06 | 3.179586e-05 | 86.316246 |
| male | Brain_Non-Myeloid | Striatum | neuron | BC018242 | 5.455344e-05 | 6.3290645e-07 | 1.2181661e-05 | 86.19497 |
| male | Brain_Non-Myeloid | Striatum | neuron | Rbbp4 | 0.00010045298 | 1.2053587e-06 | 1.1883541e-05 | 83.33859 |
| male | Brain_Non-Myeloid | Striatum | neuron | Epm2aip1 | 8.843252e-05 | 1.1470199e-06 | 2.0600064e-05 | 77.097565 |
| male | Brain_Non-Myeloid | Striatum | neuron | Fzr1 | 0.0002105122 | 2.8065679e-06 | 3.9667924e-05 | 75.00696 |
| male | Brain_Non-Myeloid | Striatum | neuron | Rnps1 | 7.039731e-05 | 1.0077008e-06 | 1.5850523e-05 | 69.85927 |
| male | Brain_Non-Myeloid | Striatum | neuron | Plcxd2 | 0.00013660398 | 1.9988347e-06 | 2.5324405e-05 | 68.34178 |
| male | Heart | RV | smooth muscle cell | Rab11b | 0.0005348152 | 7.893241e-06 | 7.2616676e-05 | 67.75609 |
| male | Brain_Non-Myeloid | Striatum | neuron | Bcap31 | 0.00019892678 | 3.0440312e-06 | 2.9596453e-05 | 65.34976 |
| male | Brain_Non-Myeloid | Striatum | neuron | Rps6kb1 | 8.987269e-05 | 1.3800515e-06 | 1.8104847e-05 | 65.12266 |
| male | Brain_Non-Myeloid | Striatum | neuron | Mllt11 | 0.00048194916 | 7.678776e-06 | 5.713577e-05 | 62.763798 |
| male | Brain_Non-Myeloid | Striatum | neuron | Slk | 4.505886e-05 | 7.4619004e-07 | 7.770414e-06 | 60.38515 |
| male | Brain_Non-Myeloid | Striatum | neuron | Zcrb1 | 7.6669865e-05 | 1.3086981e-06 | 9.617113e-06 | 58.584793 |
| male | Brain_Non-Myeloid | Striatum | neuron | Zc3hc1 | 0.0001134146 | 1.9398335e-06 | 2.3227769e-05 | 58.466125 |
| male | Brain_Non-Myeloid | Striatum | neuron | Ncs1 | 7.630424e-05 | 1.3748485e-06 | 1.8158327e-05 | 55.50007 |
| male | Brain_Non-Myeloid | Striatum | neuron | Sdf2 | 3.890148e-05 | 7.0711206e-07 | 2.9841515e-06 | 55.014507 |
| male | Brain_Non-Myeloid | Striatum | neuron | Ccdc104 | 0.00015775146 | 3.1988438e-06 | 3.6473226e-05 | 49.315136 |
| male | Brain_Non-Myeloid | Striatum | neuron | Eif5 | 0.0003952342 | 8.2375445e-06 | 4.6625053e-05 | 47.97961 |
| male | Brain_Non-Myeloid | Striatum | neuron | Cldn25 | 6.5069755e-05 | 1.4236132e-06 | 1.5873708e-05 | 45.707436 |
| male | Brain_Non-Myeloid | Striatum | neuron | Dcaf7 | 5.516026e-05 | 1.2240959e-06 | 1.1635886e-05 | 45.062004 |
| male | Brain_Non-Myeloid | Striatum | neuron | Setd5 | 9.19728e-05 | 2.0862706e-06 | 2.210631e-05 | 44.08477 |
| male | Brain_Non-Myeloid | Striatum | neuron | Usp14 | 0.0001523874 | 3.6228003e-06 | 3.1403742e-05 | 42.063416 |
| male | Brain_Non-Myeloid | Striatum | neuron | Abr | 0.00024039032 | 5.778228e-06 | 5.721728e-05 | 41.602768 |
| male | Brain_Non-Myeloid | Striatum | neuron | Eif4g1 | 0.00019838935 | 5.1092334e-06 | 2.0219039e-05 | 38.829567 |
| male | Brain_Non-Myeloid | Striatum | neuron | Mapk8 | 1.1592771e-05 | 2.9983033e-07 | 7.7263076e-07 | 38.66431 |
| male | Brain_Non-Myeloid | Striatum | neuron | Fam63b | 0.00011700608 | 3.0788885e-06 | 1.6138218e-05 | 38.00269 |
| male | Heart | RV | smooth muscle cell | Nfic | 0.00017187209 | 5.0228414e-06 | 3.5693178e-05 | 34.218094 |
| male | Marrow | KLS | naive B cell | Hnrnpc | 0.00086025504 | 2.667654e-05 | 8.7451815e-05 | 32.247623 |
| male | Brain_Non-Myeloid | Striatum | neuron | Habp4 | 0.00013014684 | 4.338868e-06 | 1.8354485e-05 | 29.99557 |
| male | Brain_Non-Myeloid | Striatum | neuron | Rab2a | 0.0005716719 | 1.9549896e-05 | 6.986806e-05 | 29.24168 |
| male | Brain_Non-Myeloid | Striatum | neuron | Mmgt1 | 6.339924e-05 | 2.1751364e-06 | 1.0355678e-05 | 29.147236 |
| male | Brain_Non-Myeloid | Striatum | neuron | H2afy | 0.00019749936 | 7.166236e-06 | 2.6065727e-05 | 27.559704 |
| male | Heart | RV | smooth muscle cell | Tra2b | 0.00026552446 | 1.0275863e-05 | 1.4296348e-05 | 25.839624 |
| male | Heart | RV | smooth muscle cell | 2810428I15Rik | 0.00013513297 | 5.264211e-06 | 2.0130403e-05 | 25.670124 |
| male | Brain_Non-Myeloid | Striatum | neuron | Gdi1 | 0.00039324607 | 1.569016e-05 | 7.865212e-05 | 25.063225 |
| male | Brain_Non-Myeloid | Striatum | neuron | Rsrc1 | 4.5835575e-05 | 1.8387002e-06 | 7.126809e-06 | 24.928234 |
| male | Marrow | T-cells | late pro-B cell | Gng10 | 3.0480845e-05 | 0.0007446929 | 0.00010431855 | 24.431503 |
| male | Heart | RV | smooth muscle cell | Son | 0.00012644996 | 5.2124747e-06 | 2.3973394e-05 | 24.259098 |
| male | Brain_Non-Myeloid | Striatum | neuron | Ypel5 | 0.00020580423 | 8.70723e-06 | 3.036099e-05 | 23.636013 |
| male | Brain_Non-Myeloid | Striatum | neuron | 1810022K09Rik | 8.5749525e-05 | 3.7889668e-06 | 1.5443056e-05 | 22.631369 |
| male | Marrow | T-cells | granulocytopoietic cell | Hist1h2ab | 0.00045099386 | 1.9936868e-05 | 6.7766196e-05 | 22.621098 |
| male | Brain_Non-Myeloid | Striatum | neuron | Anp32b | 3.615451e-05 | 1.6046774e-06 | 8.6078335e-06 | 22.530687 |
| male | BAT | Fat | NK cell | Whsc1l1 | 2.6982016e-05 | 0.00060550036 | 5.147761e-05 | 22.440886 |
| male | Brain_Non-Myeloid | Striatum | neuron | Rplp0 | 0.00018459054 | 8.615841e-06 | 3.552401e-05 | 21.424551 |
| male | Heart | RV | smooth muscle cell | Prdx3 | 0.0003212608 | 1.5786482e-05 | 4.6289388e-05 | 20.350372 |
| male | Brain_Non-Myeloid | Striatum | neuron | Rraga | 0.0002823679 | 1.4802518e-05 | 5.7142577e-05 | 19.075665 |
| male | Brain_Non-Myeloid | Striatum | neuron | Rac1 | 0.00019959023 | 1.0931293e-05 | 2.6950389e-05 | 18.25861 |
| male | Brain_Non-Myeloid | Striatum | neuron | Hspe1 | 0.0001995371 | 1.1392734e-05 | 4.1872394e-05 | 17.514416 |
| male | Brain_Non-Myeloid | Striatum | neuron | Uchl5 | 5.7720743e-05 | 3.373906e-06 | 1.24595645e-05 | 17.107983 |
| male | Brain_Non-Myeloid | Striatum | neuron | Mapkap1 | 9.082312e-05 | 5.5189917e-06 | 1.9201116e-05 | 16.456469 |
| male | Marrow | T-cells | granulocytopoietic cell | Dhx15 | 0.00019692567 | 1.2211181e-05 | 3.384033e-05 | 16.126669 |
| male | Brain_Non-Myeloid | Striatum | neuron | Gpm6a | 0.00045810718 | 2.9244946e-05 | 8.480664e-05 | 15.66449 |
| male | Heart | RV | smooth muscle cell | C1qbp | 0.00017608178 | 1.1401348e-05 | 2.7927486e-05 | 15.443943 |
| male | Brain_Non-Myeloid | Striatum | neuron | Ociad1 | 0.0006245954 | 4.09686e-05 | 0.00011696721 | 15.245709 |
| male | Brain_Non-Myeloid | Striatum | neuron | Sqstm1 | 0.0005039646 | 3.3825534e-05 | 7.1734634e-05 | 14.89894 |
| male | Heart | RV | atrial myocyte | Egr1 | 0.0018491918 | 0.00013276577 | 0.00029501904 | 13.928227 |
| male | Heart | RV | smooth muscle cell | Blmh | 0.00043042607 | 3.4204048e-05 | 8.378246e-05 | 12.584068 |
| male | Brain_Non-Myeloid | Striatum | neuron | Ywhaz | 0.00073477434 | 7.218824e-05 | 0.0001612302 | 10.178588 |
| male | Pancreas | Exocrine | pancreatic stellate cell | Abhd16a | 6.1861014e-05 | 0.00062465155 | 0.00012336914 | 10.097661 |
| male | Marrow | T-cells | late pro-B cell | Gadd45gip1 | 3.437359e-05 | 0.00034175548 | 6.0711413e-05 | 9.942386 |
| male | Marrow | T-cells | immature B cell | Tmsb10 | 9.3557275e-05 | 0.000822772 | 0.00014500288 | 8.794313 |
| male | Heart | RV | smooth muscle cell | Fermt2 | 0.00027891458 | 3.3166307e-05 | 5.0831393e-05 | 8.409576 |
| male | Heart | RV | smooth muscle cell | Atp5j2 | 0.00019170991 | 2.4275001e-05 | 3.5895977e-05 | 7.897421 |
| male | Brain_Non-Myeloid | Striatum | brain pericyte | Swi5 | 0.00014326264 | 0.0010372723 | 0.00018251261 | 7.240354 |
| male | Brain_Non-Myeloid | Striatum | medium spiny neuron | Agtpbp1 | 5.8508685e-05 | 0.00041125724 | 8.1530794e-05 | 7.0289946 |
| male | Heart | RV | smooth muscle cell | Rock1 | 0.00083792955 | 0.00014676641 | 0.00017150096 | 5.7092733 |
| male | Aorta | Heart | macrophage | Lgals3 | 0.00035783832 | 0.0019126086 | 0.0003499575 | 5.3448963 |
| male | Marrow | T-cells | late pro-B cell | Rpsa | 0.001348739 | 0.0068937703 | 0.0013369769 | 5.111271 |
| male | Marrow | T-cells | immature B cell | Cfl1 | 0.0009635951 | 0.0048020845 | 0.0009180502 | 4.9835086 |
