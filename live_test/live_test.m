prwaitbar off;
% load test set
handwritten_datafile = hw();
test_set = my_rep(handwritten_datafile);

% load nist datafile
small_nist_set = prnist([0:9],[1:100:1000]);
large_nist_set = prnist([0:9],[1:1000]);

% prepare training dataset
small_train_set = my_rep(small_nist_set);
large_train_set = my_rep(large_nist_set);

% train classifier
W_best_small = small_train_set*medianW;
W_best_large = large_train_set*knn1_pca_large;

% test using live dataset 
[E_small_set,Cs] = test_set*W_best_small*testc;
[E_large_set,Cl] = test_set*W_best_large*testc;
