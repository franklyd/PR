%test for number of features from PCA 
result=[];
for i = 25:5:50
    obj1 =obj*scalem(obj,'variance');
    [W,n]= pcam(obj1,i);
    obj1 = obj1*W;
    [trn,tst]=gendat(obj1,0.8);
    w1 = knnc(trn,1);
    w2 = parzenc(trn);
    w3 = qdc(trn);
    w4 = lmnc(trn,10);
    W2 = {w1,w2,w3,w4};
    result= [result;tst*W2*testc]
end
