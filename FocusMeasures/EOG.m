function out = EOG(matrix)
%% Function : caculate the Energy of Image Gradient


% EOG = sum_y sum_x (f_x^2 + f_y^2);
%
% f_x = f(x+1,y) - f(x,y)
% f_y = f(x,y+1) - f(x,y)


step = 1;

%matrix_en = padarray(matrix,[step step],'symmetric');

fxy = matrix(1:end-step,1:end-step);

fx = matrix(1:end-step,2:end); % f(x+1,y)
fy = matrix(2:end,1:end-step); % f(x+1,y)

temp = (fx - fxy).^2 + (fy - fxy).^2;
out = sum(temp(:));

