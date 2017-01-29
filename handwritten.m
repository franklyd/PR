function image_set = handwritten()

% Get labelfrom prnist
obj = prnist([0:9],[1:10]);
lab=getlabels(obj);

% load image and assign labels
Imgs = dir(['hw' '/' '*.bmp']);
NumImgs = size(Imgs,1);
image_set = [];
for i=1:NumImgs
im = imread(['hw' '/' Imgs(i).name]);
imcomp = imcomplement(im);
imbw = im2bw(imcomp(:,:,1));
imobj = im2obj(imbw)*im_resize([],[32,32]);
imlab =  setlabels(imobj, lab(i,:));
image_set=[image_set; imlab];
end
