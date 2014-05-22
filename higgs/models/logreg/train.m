function [theta, J] = train(X, y, lambda)

[m, n] = size(X);

initial_theta = zeros(n, 1);

options = optimset('GradObj', 'on', 'MaxIter', 400);

[theta, J, exit_flag] = fminunc(@(t)(costFunction(X, y, t, lambda)), initial_theta, options);

end
