%Testing for a large dataset: feature size & diiferent classifiers
large_data = prnist([0:9],[1:1000]);
large_set = my_rep(large_data);

classf1 = knnc;
classf2 = parzenc;
classfiers = {classf1,classf2};
pca_250= large_set*scalem([large_set],'variance') * pcam([large_set],250);
featsizes = [[1 4 6 8 10 15 20 25 30 35 40 45 50] [60 80 100 150 200 250]];
repeats = 5;

featcurves = clevalf(pca_250,classfiers,featsizes,0.5,repeats);
plote(featcurves,'noapperror');
title('Large training set: non-parametric');

