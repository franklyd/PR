%Testing for a small dataset: feature size & diiferent classifiers
%small_data = prnist([0:9],[1:50:1000]);
%small_set = my_rep(small_data);
classf1 = knnc;
classf2 = parzenc;
classfiers = {classf1,classf2};
pca_250= small_set*scalem([small_set],'variance') * pcam([small_set],250);
featsizes = [[1 4 6 8 10 12 14 16 18 20 25 30] [40 60 80 100 150 200 250]];
repeats = 10;

featcurves = clevalf(pca_250,classfiers,featsizes,0.5,repeats);
plote(featcurves,'noapperror');
title('Small training set: non-parametric');

