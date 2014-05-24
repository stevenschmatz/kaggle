function polyFeatures = createPolynomialFeatures(X)

[m n] = size(X);

polyFeatures = zeros(m, n*(n+1)/2);

counter = 1;

for i = 1:n

for j = i:n

polyFeatures(:, counter) = X(:, i).*X(:, j);
counter += 1;

end

end
