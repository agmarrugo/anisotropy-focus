Anisotropy-based focus measure
================

## Introduction

These are some basic instructions for using the code. If you run `testFM.m` you'll basically get a comparison of different focus measures. `computeFV.m` computes all focus measures on the specified data set. The folder `FocusMeasures` contains all implemented focus measures including ours `anisoFM.m`.


### Focus measures:
- S1:   Moscaritolo et al. 
- S2:   l2-norm image gradient
- S3:   Energy of Laplacian
- S4:   Summed-modified Laplacian (Nayer and Nakagawa)
- S5:   Frequency-selective weighted median filter (Choi and Lee)
- Sa:   Anisotropy-based focus measure (Marrugo et al.)

For further details see our paper:


A. G. Marrugo et al., &quot;Anisotropy-based robust focus measure for
non-mydriatic retinal imaging&quot;, J. Biomed. Opt., vol. 17 (7), p. 076021,
2012.
[doi:10.1117/1.JBO.17.7.076021](http://dx.doi.org/10.1117/1.JBO.17.7.076021)

Created by Andres Marrugo on 2012-07-10.   
Copyright (c)  Andres Marrugo. All rights reserved.