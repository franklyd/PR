prwaitbar off;

% data cleaning
%preproc = im_box([],0,1)*im_rotate*im_resize([],[32,32])*im_box([],1,0);
%obj = prnist([0:9],[1:4:1000])*preproc;
%lab = [repmat(0,250,1); repmat(1,250,1); repmat(2,250,1); repmat(3,250,1); repmat(4,250,1); repmat(5,250,1); repmat(6,250,1); repmat(7,250,1); repmat(8,250,1); repmat(9,250,1)];
%nist = prdataset(obj,lab);

% PCA feature extraction
pca100 = nist*scalem(nist,'variance')*pcam(nist,100);

%test for number of features from PCA 
N = [1:100];
E1 = clevalf(pca100,nmc,N, 0.5, 1)
E2 = clevalf(pca100,ldc,N, 0.5, 1)
E3 = clevalf(pca100,qdc,N, 0.5, 1)
E4 = clevalf(pca100,fisherc,N, 0.5, 1)
E5 = clevalf(pca100,loglc,N, 0.5, 1)
E6 = clevalf(pca100,knnc([],1),N, 0.5, 1)
E7 = clevalf(pca100,vpc([],1000),N, 0.5, 1)
E8 = clevalf(pca100,parzenc,N, 0.5, 1)


plote([E1 E2 E3 E4 E5 E6 E7 E8]);
[min(E1.error) min(E2.error) min(E3.error) min(E4.error) min(E5.error) min(E6.error) min(E7.error) min(E8.error)]