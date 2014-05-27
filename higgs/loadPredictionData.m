cd ../../../data/kaggle/higgs;

M = csvread('test.csv', 1, 0);
EventIDs = M(:, 1);
X = M(:, 2:end);
X = [ones(size(X, 1), 1), X];
clear M;

