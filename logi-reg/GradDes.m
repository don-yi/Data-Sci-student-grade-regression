function GradDes (filename, startWeight, stepSize, numItr)

% data read from excel
T = readtable(filename);

% pass/fail
Y(T.CourseGrade >= 70) = 1;
Y(T.CourseGrade < 70) = -1;
Y = Y';

W = startWeight;
X = [T.Midterm T.Homework T.Quiz];

% num'tor calc
numtor = Y.*X;

% denum calc
expPwr = W * X.';
expPwr = Y .* expPwr';
denum = 1 + exp(expPwr);

% mat b4 summation
eachGrad = numtor ./ denum;

gt = -mean(eachGrad);

W = W - stepSize*gt;

end