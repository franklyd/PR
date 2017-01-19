prwaitbar off;

% data cleaning
% preproc = im_box([],0,1)*im_rotate*im_resize([],[32,32])*im_box([],1,0);
% obj = prnist([0:9],[1:40])*preproc;
% lab = getlab(obj);
% data = getdata(obj);
% nist = prdataset(data,lab);

data = prnist([0:9],[1:50:1000]);
%nist = gilang(data);
nist = my_rep(data);
% PCA feature extraction

pca50 = nist*scalem(nist,'variance')*pcam(nist,50);

%test for number of features from PCA 
N = [1:100];
% E1 = clevalf(pca50,nmc,N, 0.5, 1)
% E2 = clevalf(pca50,ldc,N, 0.5, 1)
% E3 = clevalf(pca50,qdc,N, 0.5, 1)
% E4 = clevalf(pca50,fisherc,N, 0.5, 1)
% E5 = clevalf(pca50,loglc,N, 0.5, 1)
% E6 = clevalf(pca50,knnc([],1),N, 0.5, 1)
% E7 = clevalf(pca50,vpc([],1000),N, 0.5, 1)
E8 = clevalf(pca50,parzenc,N, 0.5, 1)


% plote([E1 E2 E3 E4 E5 E6 E7 E8]);
% [min(E1.error) min(E2.error) min(E3.error) min(E4.error) min(E5.error) min(E6.error) min(E7.error) min(E8.error)]

plote(E8); min(E8.error)

W = scalem([],'variance')*pcam([],50)*knnc([],1);