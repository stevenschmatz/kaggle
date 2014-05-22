function predictions = predict(Xtest, theta)

predictions = sigmoid(Xtest * theta) > 0.5;

end
