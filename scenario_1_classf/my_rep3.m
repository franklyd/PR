function out = my_rep3(m)

out = prdataset(m*im_unif([])*im_threshold([])*im_resize([],[32,32])*im_box([],1,0));

end