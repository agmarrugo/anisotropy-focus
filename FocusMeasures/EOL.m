function out=EOL(matrix)
%% Function : caculate the Energy of Laplacian measure of image


% 
% %window_wide=3;
% %spread=(window_wide-1)/2;
% %disp('SML is computing...')
% matrix=double(matrix);
% [row,column]=size(matrix);
% temp=zeros(row,column);
% %temp=matrix.*0;
% matrix_en=padarray(matrix,[spread spread],'symmetric');
% 
% for i=2:row+1
%     for j=2:column+1
%         temp(i-1,j-1)=abs(2*matrix_en(i,j)-matrix_en(i-1,j)-matrix_en(i+1,j))+abs(2*matrix_en(i,j)-matrix_en(i,j-1)-matrix_en(i,j+1));
%         temp(i-1,j-1) =
%     end
% end
matrix = double(matrix);

out = sum(sum(del2(matrix).^2));