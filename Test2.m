clear all
clc
% make dna
d=['atcg']
DNA=datasample(d,1000);
%Detrmine GC content
blockSize=10;
numBlocks=(DNA/blockSize);
A=('a')
T=('t')
C=('c')
G=('g')
for count = 1:numBlocks
    % calculate the indices for the block
    start = 1 + blockSize*(count-1);
    stop = blockSize*count;
    % extract the block
    block =DNA(start:stop);
    % find the GC and AT content
    gc = (sum(block == G | block == C));
    at = (sum(block == A | block == T));
    % calculate the ratio of GC to the total known nucleotides
    ratio(count) = gc/(gc+at);
end