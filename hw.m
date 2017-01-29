function image_set = hw()
% load image and assign labels
raw = prdatafile('hw');
RGB = my_rep(raw);
singleband = band2obj(RGB,1);
image_set = singleband(1:3:300,:);
end
