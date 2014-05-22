function theta = crossValidation(X, y, Xval, yval)

lambda_values = [0 0.003 0.01 0.03 0.1 0.3 1 3 10 30 100 300 1000];

theta_values = zeros(size(X, 2), size(lambda_values, 2));
error_values = zeros(size(lambda_values));

for i = 1:length(lambda_values)
	lambda = lambda_values(i);
	[theta, J] = train(X, y, lambda);
	theta_values(:, i) = theta;
	error_values(i) = testSetError(predict(Xval, theta), yval);
end

[cost, lambda_index] = min(error_values);

theta = theta_values(:, lambda_index);

end
