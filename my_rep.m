function out = my_rep(m)
out = prdataset(m*im_unif([])*im_threshold([])*im_resize([],[32,32])*im_box([],2,0));
end