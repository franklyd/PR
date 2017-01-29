%Testing for a large dataset: feature size & diiferent classifiers
large_data = prnist([0:9],[1:1000]);
prwaitbar off
large_set = my_rep3(large_data);
PCA = scalem([large_set],'variance') * pcam([large_set],30);
pca_256= large_set*PCA;
save('data_pr')
w = knnc(pca_256,1);
e = nist_eval('my_rep4',w);