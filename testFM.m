%%==============================================================================
%                     Anisotropy-based focus measure
%%==============================================================================
% 	Created by Andres Marrugo on 2012-07-10.
% 	Copyright (c)  Andres Marrugo. All rights reserved.
%	MATLAB  7.12 003.0 (R2011a)
%
%   For further details see our paper:
%
%	A.G. Marrugo et al,"Anisotropy-based robust focus measure for
%	non-mydriatic retinal imaging",Journal of Biomedical Optics 17(8),
%	XXXXXX, 2012.


% This code reads the images and computes the focus values
% per stack. This is carried out by the computeFV function.

clear all

addpath FocusMeasures/
ImagePath = ('testImages/');

% Image Stacks ROIS - preallocating memory
NoiseFree = cell(13,1);
Gauss001 = cell(13,1);
Gauss005 = cell(13,1);
Speckle001 = cell(13,1);
Speckle005 = cell(13,1);
Impulse01 = cell(13,1);
Impulse05 = cell(13,1);

%% Reading focus stack images
% Noise-free, Gaussian, Speckle, and Impulse.
List = dir([ImagePath '*Noise*.png']);
for k=1:numel(List)
    NoiseFree{k} = double(imread([ImagePath List(k).name])); 
end
FV_NF= computeFV(NoiseFree);

List = dir([ImagePath '*Gauss001*.png']);
for k=1:numel(List)
    Gauss001{k} = double(imread([ImagePath List(k).name]));
end
FV_G01 = computeFV(Gauss001);

List = dir([ImagePath '*Gauss005*.png']);
for k=1:numel(List)
    Gauss005{k} = double(imread([ImagePath List(k).name]));
end
FV_G05 = computeFV(Gauss005);

List = dir([ImagePath '*Speckle001*.png']);
for k=1:numel(List)
    Speckle001{k} = double(imread([ImagePath List(k).name]));
end
FV_S01 = computeFV(Speckle001);

List = dir([ImagePath '*Speckle005*.png']);
for k=1:numel(List)
    Speckle005{k} = double(imread([ImagePath List(k).name]));
end
FV_S05 = computeFV(Speckle005);

List = dir([ImagePath '*Impulse01*.png']);
for k=1:numel(List)
    Impulse01{k} = double(imread([ImagePath List(k).name]));
end
FV_I01 = computeFV(Impulse01);

List = dir([ImagePath '*Impulse05*.png']);
for k=1:numel(List)
    Impulse05{k} = double(imread([ImagePath List(k).name]));
end
FV_I05 = computeFV(Impulse05);

%% Plotting the results
%
% Focus stacks
% FV_NF:    Noise-free
% FV_G01:   Gaussian noise sigma=0.01
% FV_S01:   Speckle simga=0.01
% FV_I01:   Impulse d=0.01
%
% Focus measures:
% S1:   Moscaritolo et al. 
% S2:   l2-norm image gradient
% S3:   Energy of Laplacian
% S4:   Summed-modified Laplacian (Nayer and Nakagawa)
% S5:   Frequency-selective weighted median filter (Choi and Lee)
% Sa:   Anisotropy-based focus measure (Marrugo et al.)

figure(1)
plot(FV_NF)
title('Noise-free focus stack')
h = legend('$S_1$','$S_2$','$S_3$','$S_4$','$S_5$','$S_a$','Location',[0.78 0.4 0.09 0.33]);
set(h,'Interpreter','LaTex','FontSize',16)

figure(2)
plot(FV_G01)
title('Gaussian (sigma=0.01) focus stack')
h = legend('$S_1$','$S_2$','$S_3$','$S_4$','$S_5$','$S_a$','Location',[0.78 0.4 0.09 0.33]);
set(h,'Interpreter','LaTex','FontSize',16)

figure(3)
plot(FV_S01)
title('Speckle (sigma=0.01) focus stack')
h = legend('$S_1$','$S_2$','$S_3$','$S_4$','$S_5$','$S_a$','Location',[0.78 0.4 0.09 0.33]);
set(h,'Interpreter','LaTex','FontSize',16)

figure(4)
plot(FV_I01)
title('Impulse (d=0.01) focus stack')
h = legend('$S_1$','$S_2$','$S_3$','$S_4$','$S_5$','$S_a$','Location',[0.78 0.4 0.09 0.33]);
set(h,'Interpreter','LaTex','FontSize',16)
