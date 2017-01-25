%Testing for a small dataset: feature size & diiferent classifiers
small_data = prnist([0:9],[1:50:1000]);
small_set = my_rep(small_data);
classf1 = knnc;
classf2 = parzenc;
classfiers = {classf1,classf2};
pca_50= small_set*scalem([small_set],'variance') * pcam([small_set],50);
featsizes = [2:4:40];
repeats = 10;

featcurves = clevalf(pca_50,classfiers,featsizes,0.5,repeats);
plote(featcurves,'noapperror');
title('Small training set: non-parametric');

