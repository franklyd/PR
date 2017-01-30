function out = my_rep(m)
out = prdataset(m*im_box([],0,1)*im_unif([])*im_threshold([])*im_resize([],[32,32])*im_box([],1,0));
end