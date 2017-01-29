%Testing for a large dataset: feature size & diiferent classifiers
large_data = prnist([0:9],[1:5:1000]);
large_set = my_rep(large_data);
classf1 = svc;
classf2 = bpxnc;
classf4 = neurc;
classf5 = vpc;
classfiers = {classf1,classf2,classf4,classf5};
pca_100= large_set*scalem([large_set],'variance') * pcam([large_set],250);

featsizes = [[1 4 6 8 10 15 20 25 30 35 40 45 50] [60 80 100 150 200 250]];
repeats = 5;

featcurves = clevalf(pca_100,classfiers,featsizes,0.8,repeats);
plote(featcurves);
title('large training set: advanced classifiers');

