%feature curve for combined classifiers
%small_data = prnist([0:9],[1:10:1000]);
%small_set = my_rep(small_data);
pca_100= small_set*scalem([small_set],'variance') * pcam([small_set],100);
[trn rest] = gendat(pca_100,0.1);
w1 = (parzenc)*classc;
w2 = (ldc)*classc;
w3 = (svc)*classc;
w4 = (nmc)*classc;
w5 = (knnc)*classc;
w6 =(loglc)*classc;
medianW = [w1 w2 w3]*medianc;
prodW = [w1 w2 w3]*prodc;
maxW = [w1 w2 w3]*maxc;
minW = [w1 w2 w3]*minc;

classfiers = {medianW,maxW,minW,prodW};
featsizes = [[1 4 6 8 10 12 14 16 18 20 25 30] [40 60 80 100]];
repeats = 5;

featcurves = clevalf(trn,classfiers,featsizes,0.8,repeats);
plote(featcurves,'noapperror');
title('Small training set: combined classifiers');

