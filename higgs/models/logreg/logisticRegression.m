function predictions = logisticRegression(X, y)

[m n] = size(X);

training_set = X(1:(0.6*m), :); 		% 60 percent of training set is used for training
cross_validation_set = X((0.6*m):(0.8*m), :); 	% 20 percent of training set is used for cross validation

end
