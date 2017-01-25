%Testing for a small dataset: feature size & diiferent classifiers
%small_data = prnist([0:9],[1:50:1000]);
%small_set = my_rep(small_data);
classf1 = nmc;
classf2 = ldc;
classf3 = qdc;
classf4 = fisherc;
classf5 = loglc;
classfiers = {classf1,classf2,classf3,classf4,classf5};
pca_50= small_set*scalem([small_set],'variance') * pcam([small_set],50);

featsizes = [1:5:50];
repeats = 10;

featcurves = clevalf(pca_50,classfiers,featsizes,0.5,repeats);
plote(featcurves,'noapperror');
title('Small training set: 10 objects per class');

