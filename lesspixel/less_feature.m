% load nist datafile
small_nist_set = prnist([0:9],[1:100:1000]);
large_nist_set = prnist([0:9],[1:1000]);

% prepare training dataset tobe 16x16
small_train_set16 = my_rep16(small_nist_set);
large_train_set16 = my_rep16(large_nist_set);

% train classifier
W_best_small16 = small_train_set16*medianW;
W_best_large16 = large_train_set16*knn1_pca_large;

%evaluation
E_nist_small = nist_eval('my_rep16',W_best_small16);
E_nist_large = nist_eval('my_rep16',W_best_large16);