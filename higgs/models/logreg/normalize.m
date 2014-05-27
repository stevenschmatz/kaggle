function Xnormal = normalize(X)

Xnormal = zeros(size(X));

[m n] = size(X);

for i = 1:size(X, 2)
	column = X(:, i);
	colMean = mean(column);
	colStd = std(column);
	if colStd == 0
		Xnormal(:, i) = zeros(m, 1);
	else
		Xnormal(:, i) = (X(:, i) - colMean)/colStd;
	endif
end

end
