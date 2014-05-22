function err = testSetError(predictions, y)

err = mean(bitxor(predictions, y));

end
