function out = ASI(roi)

h = fspecial('average',[2 2]);

filtered = imfilter(roi,h,'symmetric','same');
%figure,imagesx(roi)
%figure,imagesx(filtered)

AbsDiff = abs(filtered - roi);
%figure,imagesx(AbsDiff)

AbsDiffMedFilt = medfilt2(AbsDiff,[2 2],'symmetric');
%figure,imagesx(AbsDiffMedFilt)

out = var(AbsDiffMedFilt(:));