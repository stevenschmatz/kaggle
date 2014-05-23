function [theta, avg_error] = logisticRegression(X, y)

warning ("off", "Octave:broadcast");		% Disable those warnings

[m n] = size(X);

training_set_X = X(1:(0.6*m), :); 		% 60 percent of data is used for training
training_set_y = y(1:(0.6*m), :);
cross_validation_set_X = X((0.6*m):(0.8*m), :); % 20 percent of data is used for cross validation
cross_validation_set_y = y((0.6*m):(0.8*m), :);
test_set_X = X((0.8*m):m, :);			% 20 percent of data is used for test set
test_set_y = y((0.8*m):m, :); 

theta = crossValidation(test_set_X, test_set_y, cross_validation_set_X, cross_validation_set_y);

avg_error = testSetError(predict(test_set_X, theta) > 0.5, test_set_y);

end
