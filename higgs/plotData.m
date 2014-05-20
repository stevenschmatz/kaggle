function k = plotData(N, col1, col2, y)

palette = hsv(3);
colorVec = y + 1;

colors = palette(colorVec(1:N), :);

scatter(col1(1:N), col2(1:N), 15, colors);

k = 0;

end
