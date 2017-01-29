function image_set = hw()
% load image and assign labels
raw = prdatafile('handwritten');
image_set = bandsel(raw,1);
end
