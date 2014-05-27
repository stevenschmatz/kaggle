function polyFeatures = createPolynomialFeatures(X)

A = X(:, 2:end);

[m n] = size(A);

polyFeatures = zeros(m, n*(n+1)/2);

counter = 1;

for i = 1:n

for j = i:n

polyFeatures(:, counter) = A(:, i).*A(:, j);
counter += 1;

end

end

polyFeatures = [ones(m, 1) polyFeatures];

end
