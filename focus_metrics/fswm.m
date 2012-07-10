function out = fswm(I)
%Frequency selective weighted median filter

%fun = @(x) myFilter(x);
fun2 = @(x) myFilter2(x);

%B = im2col(I,[1 7],'sliding');

Fx2 = colfilt(I,[1 7],'sliding',fun2);
Fy2 = colfilt(I,[7 1],'sliding',fun2);

%Fx = nlfilter(I,[1 7],fun);
%Fy = nlfilter(I,[7 1],fun);



Fx2 = Fx2(4:end-3,4:end-3);
Fy2 = Fy2(4:end-3,4:end-3);

out = sum(Fx2(:).^2) + sum(Fy2(:).^2);

end



% function FilteredImageBlock=myFilter(ImageBlock)
% 
% FilteredImageBlock = median([ImageBlock(3) ImageBlock(4) ImageBlock(5)]) ...
%     - 1/2*(median([ImageBlock(1) ImageBlock(2) ImageBlock(3)])) ...
%     -1/2*(median([ImageBlock(5) ImageBlock(6) ImageBlock(7)]));
% 
% 
% end

function FilteredImageCols=myFilter2(A)

% A: Image arranged into columns

 FilteredImageCols = median(A(3:5,:)) - 1/2*median(A(1:3,:))...
     - 1/2*median(A(5:7,:));

end