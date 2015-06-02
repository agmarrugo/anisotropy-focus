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
[download pdf](https://github.com/downloads/agmarrugo/anisotropy-focus/J.%20Biomed.%20Opt._Marrugo_2012.pdf)

A. G. Marrugo et al., &quot;Implementation of an image based focusing algorithm for non-mydriatic retinal imaging&quot;, J. Engineering Mechatronics and Automation (CIIMA), 2014 III International Congress of , pp.1,3, 22-24 Oct. 2014.
[10.1109/CIIMA.2014.6983425](http://10.1109/CIIMA.2014.6983425)
[download pdf](http://ieeexplore.ieee.org/xpl/login.jsp?tp=&arnumber=6983425&url=http%3A%2F%2Fieeexplore.ieee.org%2Fxpls%2Fabs_all.jsp%3Farnumber%3D6983425)

Created by Andres Marrugo on 2012-07-10.   
Copyright (c)  Andres Marrugo. All rights reserved.
