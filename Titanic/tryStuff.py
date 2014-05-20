__author__ = 'stevenschmatz'

import numpy as np
import csv as csv

train_file_object = csv.reader(open('/Users/stevenschmatz/CS/kaggle/Titanic/data/train.csv', 'rb'))
train_file_object_header = train_file_object.next()

data = []
for row in train_file_object:
    data.append(row)

data = np.matrix(data)  # pclass: 2; gender: 4; ticket price: 9;


def print_column(column_number):
    print data[0::, column_number]
    print train_file_object_header[column_number]


print_column(2)