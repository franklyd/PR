prwaitbar off;
delfigs;
obj1 = prnist([0:4],[1:100:1000]);
figure(1); show(obj1);
obj2 = im_box(obj1,0,1);

%figure(2); show(obj2);
%obj3 = im_center(obj2);
%figure(3);show(obj3);

obj4 = im_resize(obj2,[30 30]);
figure(4);show(obj4);