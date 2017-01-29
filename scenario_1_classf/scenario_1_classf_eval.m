%Testing for a large dataset: feature size & diiferent classifiers
large_data = prnist([0:9],[1:1000]);
prwaitbar off
large_set = my_rep(large_data);
knn1_pca_large = scalem([],'variance')*pcam([],30)*knnc([],1);
knn1W = large_set*knn1_pca_large;
e = nist_eval('my_rep',knn1W);