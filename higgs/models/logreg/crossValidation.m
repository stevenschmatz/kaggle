function theta = crossValidation(X, y)

lambda_values = [0 0.003 0.01 0.03 0.1 0.3 1 3 10 30 100 300 1000];

theta_values = zeros(size(X, 2), size(lambda_values, 2));
cost_values = zeros(size(lambda_values));

for i = 1:length(lambda_values)
	lambda = lambda_values(i);
	[theta, J] = train(X, y, lambda);
	theta_values(:, i) = theta;
	cost_values(i) = J;
end

[cost, lambda_index] = min(theta_values);
theta = theta_values(:, lambda_index);

end
