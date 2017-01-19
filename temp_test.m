%temporary for testing

a = prnist([0:9],[1:10]);
nist = dig_2_data(a);
pca100 = nist*scalem(nist,'variance')*pca(nist,100);
w = knnc(pca100,1);