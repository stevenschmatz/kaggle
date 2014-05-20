__author__ = 'stevenschmatz'

import numpy as np
import csv as csv


class LinearRegression:
    def __init__(self):
        self.train_file = open('/Users/stevenschmatz/CS/kaggle/Titanic/data/train.csv', 'rb')
        self.train_file_object = csv.reader(self.train_file)
        self.train_file_header = self.train_file_object.next()

        self.test_file = open('/Users/stevenschmatz/CS/kaggle/Titanic/data/test.csv', 'rb')
        self.test_file_object = csv.reader(self.test_file)
        self.test_file_header = self.test_file_object.next()

        self.write_file = open('/Users/stevenschmatz/CS/kaggle/Titanic/data/results.csv', 'wb')
        self.write_file_object = csv.writer(self.write_file)

    def setup_arrays(self):
        self.training_data = []
        for row in self.train_file_object:
            self.training_data.append(row)
        self.training_data = np.array(self.training_data)

        self.test_data = []
        for row in self.test_file_object:
            self.test_data.append(row)
        self.test_data = np.array(self.test_data)

    def clean_data(self):
        #gender: column 4, 1 if male, 0 if female
        self.gender = self.training_data[0::, 4] == "male"

        self.gender = self.gender.astype(np.float)
        self.siblings = self.training_data[0::, 6].astype(np.float)
        self.parch = self.training_data[0::, 7]
        self.fare = self.training_data[0::, 9]

        self.X = np.zeros((len(self.training_data), 4))
        for i in xrange(len(self.training_data)):
            self.X[i][0] = self.gender[i]
            self.X[i][1] = self.siblings[i]
            self.X[i][2] = self.parch[i]
            self.X[i][3] = self.fare[i]

        self.y = np.matrix(self.training_data[0::, 1])
        self.y = self.y.astype(np.float).T

    def normal_equation(self):
        self.theta = np.linalg.pinv(np.dot(self.X.T, self.X)) * np.dot(self.X.T, self.y)

    def make_predictions(self):
        self.write_file_object.writerow(["PassengerId", "Survived"])
        for test_point in self.test_data:
            x = np.matrix([[test_point[3]], [test_point[5]], [test_point[6]], [test_point[8]]])
            if x[0] == "male":
                x[0] = 1
            else:
                x[0] = 0

            try:
                x = x.astype(np.float)
            except:
                pass

            if self.theta.T * x > 0.5:
                self.write_file_object.writerow([test_point[0], "1"])
            else:
                self.write_file_object.writerow([test_point[0], "0"])


    def main(self):
        self.setup_arrays()
        self.clean_data()
        self.normal_equation()
        self.make_predictions()


if __name__ == '__main__':
    Solution = LinearRegression()
    Solution.main()