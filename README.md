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

A.G. Marrugo et al,"Anisotropy-based robust focus measure for
non-mydriatic retinal imaging",Journal of Biomedical Optics 17(8),
XXXXXX, 2012.

Created by Andres Marrugo on 2012-07-10.
Copyright (c)  Andres Marrugo. All rights reserved.