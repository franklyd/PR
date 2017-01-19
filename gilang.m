function ps = gilang(m)
%sample data from nist
m1 = prdataset(m*im_box([],1,0)*im_resize([],[32,32]));
% Initiate img
img = data2im(m1);
% get label for labeling processed 
labs = getlab(m(:,:));

% element for erossion and dilation
se2 = strel('square',2);
se1 = strel('disk',1);

% data cleaning
for i = 1 : size(img,4)   % calculate #sample for looping index
    temp = img(:,:,1,i);
    level = graythresh(temp);
    temp = im2bw(temp,level);
    temp = imopen(temp,se2);
%     temp = imerode(temp,se1);
%     temp = imdilate(temp,se1);
    img(:,:,1,i) = temp;
 end
% assign label to processed image
out = im2obj(img);
temp = setlabels(out,labs);
ps = temp*scalem(temp,'variance')*pcam(temp,50);
end