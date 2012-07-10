function FV = computeFV(ROIS)

n = numel(ROIS);

VecNormalize = @(x) x./max(x(:)); 

load precomputed_matrices.mat
fun = @(block_struct) anisoFM(block_struct.data,ind,w,diagP,vertP,horzP);


FV = zeros(n,6);

% Compute focus measures
for k=1:n
    FV(k,1) = ASI(ROIS{k});
    FV(k,2) = EOG(ROIS{k});
    FV(k,3) = EOL(ROIS{k});
    FV(k,4) = sum(sum(SML(ROIS{k})));
    FV(k,5) = fswm(ROIS{k});
    B = blockproc(ROIS{k},[16 16],fun);
    FV(k,6) = mean(B(:));
end
for k=1:6
    FV(:,k) = VecNormalize(FV(:,k));
end
    
    
end