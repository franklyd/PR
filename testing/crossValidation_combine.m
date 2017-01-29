%feature curve for combined classifiers
small_data = prnist([0:9],[1:100:1000]);
small_set_trn = my_rep(small_data);
pca= scalem([],'variance') * pcam([],20);
w1 = (pca*parzenc)*classc;
w2 = (pca*ldc)*classc;
w3 = (pca*svc)*classc;
w4 = (pca*nmc)*classc;
w5 = (pca*knnc)*classc;
w6 =(pca*loglc)*classc;
medianW = [w1 w2 w3]*medianc;
prodW = [w1 w2 w3]*prodc;
maxW = [w1 w2 w3]*maxc;
minW = [w1 w2 w3]*minc;

[e1 s1] = prcrossval(small_set_trn,medianW,10,10);
[e2 s2] = prcrossval(small_set_trn,maxW,10,10);
[e3 s3] = prcrossval(small_set_trn,prodW,10,10);
[e4 s4] = prcrossval(small_set_trn,minW,10,10);