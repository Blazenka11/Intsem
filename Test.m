clear all
clc
% make dna
d=['atcg']
DNA=datasample(d,1000);
%Detrmine GC content
blockSize=10;
numBlocks=floor(DNA/blockSize);
A=('a')
T=('t')
C=('c')
G=('g')
for i=1:numBlocks
    counts=histcounts(1:1000);
    ratio(counts) = G+C/((G+C)+(A+T));
    


end
