function [J, grad] = costFunction(X, y, theta, lambda)

[m n] = size(X);

J = -mean(y .* log(sigmoid(X*theta)) + (1-y).*log(1-sigmoid(X * theta))) + (lambda/(2*m))*norm(theta(2:end, :))^2;

grad = zeros(size(theta));

grad = mean((sigmoid(X*theta) - y).*X)' + (lambda/m)*[0; theta(2:end)];

end
