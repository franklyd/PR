%%Feature Extraction
filename    = 'my_rep';

%%Scenario 1: Evaluate with >=200 samples per class
clean = prnist([0:9],[1:4]);

w = vpc(HOG,10);
small_error = nist_eval(filename,w,100)

%%Scenario 2: Evaluate with <=10 samples per class
clean = prnist([0:9],[1:10]);
w           = vpc(HOG,1000);
large_error = nist_eval(filename,w,100)

