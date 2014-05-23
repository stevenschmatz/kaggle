function rankings = rank(predictions)

test = [(1:length(predictions))' predictions];
b = flipud(sortrows(test, 2))(:, 1);

rankings = sortrows([b (1:length(b))'], 1)(:, 2);

end
