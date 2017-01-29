small_data = prnist([0:9],[1:10:1000]);
small_set = my_rep_small(small_data);
[trn left_set] = gendat(small_set,0.1);
pca_20= scalem([],'variance') * pcam([],20);
w1 = (pca_20*knnc)*classc;
w2 = (pca_20*vpc)*classc;
w3 = (pca_20*ldc)*classc;
w4 = (pca_20*svc)*classc;
minW = [w1;w2;w3;w4]*minc;
minW_para = parallel(minW,[4624]);
minW_trained = trn*minW_para;
% to test, you also need to use my_rep_small to get the right data.