function Out = anisoFM(y,ind,w,diagP,vertP,horzP)
% 	ANISOFM   DCT-based focus measure
% 		[OUT] = ANISOFM(Y,IND,W,DIAGP,VERTP,HORZP)
% 
% 	This function computes the anisotropy-based 
%	focus measure by means of the DCT.
%	
% 	y:    	image patch of size NxN
% 	ind:  	indices for angular partition of dct(y)
% 	w:    	weights vector of size 1xN with values [0,1]
% 	diagP: 	component projection and averaging for diagonal components
% 	vertP: 	vertical component projection
% 	horzP: 	horizontal component projection
%
%	diagP, vertP, and horzP are precomputed matrices so that the vector 
%	projection is performed more rapidly. See our paper:
%	
%	A.G. Marrugo et al,"Anisotropy-based robust focus measure for 
%	non-mydriatic retinal imaging",Journal of Biomedical Optics 17(8), 
%	XXXXXX, 2012.
%
% 	Created by Andres Marrugo on 2012-07-05.
% 	Copyright (c)  Andres Marrugo. All rights reserved.




% DCT of image patch
x = dct2(double(y));

% DCT normalization 
temp = (x.^2)./sum(abs(x(:))).^2; %todo


% Vector projection
D2 = temp.*double(ind(:,:,1));
R = vertP'*D2;
V1 = R(eye(16)>0);
% After projection 
V1 = sum(V1.*w);

D2 = temp.*double(ind(:,:,3));
R = D2*horzP';
V3 = R(eye(16)>0);
V3 = sum(V3.*w);

sD = repmat(temp,[1 1 16]);
temp = sD.*diagP;
for k=1:16
    V2(k) = sum(sum(temp(:,:,k)));
end
V2 = sum(V2'.*w);


Out = var([V1 V2 V3]);



end %  function
