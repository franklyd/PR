%Testing for a small dataset: feature size & diiferent classifiers
%small_data = prnist([0:9],[1:50:1000]);
%small_set = my_rep(small_data);
classf1 = svc;
classf2 = bpxnc;
classf3 = qdc;
classf4 = neurc;
classf5 = vpc;
classfiers = {classf1,classf2,classf3,classf4,classf5};
pca_50= small_set*scalem([small_set],'variance') * pcam([small_set],50);

featsizes = [2:4:40];
repeats = 10;

featcurves = clevalf(pca_50,classfiers,featsizes,0.5,repeats);
plote(featcurves,'noapperror');
title('Small training set: advanced classifiers');

