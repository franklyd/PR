preproc = im_box([],0,1)*im_resize([],[28,28])*im_box([],1,0);
obj = prnist([0:9],[1:1000]);
obj = obj*preproc;
%obj = prdataset(obj);
W= scalem(obj,'variance') * pcam(obj,50);
%map = scalem(obj,'variance') 
obj1 = obj*W;
[trn,tst]=gendat(obj1,0.8);
w1 = knnc(trn,1);
tst*w1*testc