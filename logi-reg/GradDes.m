function GradDes (filename, startWeight, stepSize, numItr)

% data read from excel
T = readtable(filename);


%% init's

% pass/fail
Y = (T.CourseGrade >= 70);
%Y(T.CourseGrade < 70) = -1;
%Y = Y';

W = startWeight;
X = [ones(331, 1) T.Midterm T.Homework T.Quiz];

% num'tor calc
numtor = Y.*X;


%% calc's

for i = 1:numItr
    % mat b4 summation
    % denum calc
    expPwr = W * X.';
    expPwr = Y .* expPwr';
    denum = 1 + exp(expPwr);
    eachGrad = numtor ./ denum;

    % grad calc
    G = -mean(eachGrad);

    % update weight
    W = W - stepSize*G;
end

disp(W);

end