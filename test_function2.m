prwaitbar off;
% preproc = im_resize([],[32,32])*im_box([],2,0);
% m1 = prdataset(prnist([0:9],[1:1000])*preproc);
% %figure(1); show(m1);
% m2 = im_unif(m1);
% %figure(2); show(m2);
% m3 = im_threshold(m2);
% %figure(3); show(m3);
% m4=im_bdilation(m3,1);
% %figure(4); show(m4);
% m5=im_rotate(m4);
% %figure(5); show(m5);
% 
% pca50_1 = m3*scalem(m3,'variance')*pca(m3,50);
% pca50_2 = m4*scalem(m4,'variance')*pca(m4,50);
% pca50_3 = m5*scalem(m5,'variance')*pca(m5,50);

N = 1:50;
E81 = clevalf(pca50_1,parzenc,N, 0.5, 1);
E82 = clevalf(pca50_2,parzenc,N, 0.5, 1);
E83 = clevalf(pca50_3,parzenc,N, 0.5, 1);

plote([E81 E82 E83]);
[min(E81.error) min(E82.error) min(E83.error)]
