%preproc = im_box([],0,1)*im_rotate*im_resize([],[50,50])*im_box([],1,0);
%obj = prnist([0:9],[1:1000]);
%obj = obj*preproc;
%x=im_features(obj,obj,{'Area','Perimeter','EulerNumber'});
%x1 = seldat(obj,[1:2:4]);
%x2 = seldat(obj,[1:2:6]);
%x1 = prdataset(x1);
%x2 = prdataset(x2);
%lab = getlab(obj);
%obj = prdataset(obj);
W = scalem(obj,'variance')*pcam(obj,0.9);
%obj1 = prdataset(obj*W);
[trn,tst]=gendat(obj1,0.9);

w1 = knnc(trn);
w2 = parzenc(trn);
w3 = qdc(trn);
w4 = fisherc(trn);
w5 = nmsc(trn);
w6 = neurc(trn);
w7 = svc(trn);
W2 = {w1,w2,w1+w2,w3,w4,w5,w6,w7}
disp(tst*W2*testc)

 
%scatterd(trnP)