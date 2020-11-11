Dennis Lee
MAT 345
11/9/2020
Dr. Vermesi
# Project 3 Answer Sheet
a. Dennis Lee

b. Excel & Matlab

c.
1. 7.667123062
2. 0.312627725
3. 0.152893588
4. 0.438663888

d. Please refer “Project3-lin-reg.xlsx”, tab “Predict” Column K

e. Grad Des

f. 
``` matlab
startWeight = [0 0 0 0];
stepSize = .0001;
numItr = 100000;
```
``` matlab
% loop termination condition
if ((abs(W) < [1 1 1 1]) == [1 1 1 1]) & (itrCt > numItr)
    break
```

g. 
1. -0.2134
2. -0.0654
3. 0.0181
4. 0.0792

h. (h)	Please refer “Project3-logi-reg.xlsx”, tab “Predict” Column L