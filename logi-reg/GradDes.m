function GradDes (filename, startWeight, stepSize, numItr)

% data read from excel
T = readtable(filename);


%% init's

% pass/fail
Y(T.CourseGrade >= 70) = 1;
Y(T.CourseGrade < 70) = -1;
Y = Y';

W = startWeight;
X = [ones(331, 1) T.Midterm T.Homework T.Quiz];

% num'tor calc
numtor = Y.*X;


%% calc's

itrCt = 1;
% for i = 1:numItr
while 1
    % denum calc
    expPwr = W * X.';
    expPwr = Y .* expPwr';
    denum = 1 + exp(expPwr);
    eachGrad = numtor ./ denum;

    % grad calc
    G = -mean(eachGrad);

    % update weight
    W = W - stepSize*G;

    % loop termination condition
    if ((abs(W) < [1 1 1 1]) == [1 1 1 1]) & (itrCt > numItr)
        break
    end

    % update ct
    itrCt = itrCt + 1;
end

disp(W);
disp(itrCt);

end