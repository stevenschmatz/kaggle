__author__ = 'stevenschmatz'

import csv as csv
import numpy as np

trainFile = open('/Users/stevenschmatz/CS/kaggle/Titanic/data/train.csv', "rb")

testFile = open('/Users/stevenschmatz/CS/kaggle/Titanic/data/test.csv', "rb")
testFileObject = csv.reader(testFile)
header = testFileObject.next()

predictionFile = open('/Users/stevenschmatz/CS/kaggle/Titanic/data/genderclassmodel.csv', "wb")
predictionFileObject = csv.writer(predictionFile)

data = []
for row in testFileObject:
    data.append(row)

data = np.array(data)

predictionFileObject.writerow(["PassengerId", "Survived"])

for row in data:
    if row[3] == "female":
        predictionFileObject.writerow([row[0], 1])
    else:
        predictionFileObject.writerow([row[0], 0])

testFile.close()
predictionFile.close()