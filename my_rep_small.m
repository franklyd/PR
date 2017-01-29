function out = my_rep_small(m)

temp = prdataset(m*im_unif([])*im_threshold([])*im_resize([],[32,32])*im_box([],1,0));
out = [temp temp temp temp];

end