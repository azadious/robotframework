import csv

class ReadCSV(object):
    def read_csv_file(self, fileName):
        file = open(fileName, 'r')
        csvfile = csv.reader(file)
        file.close
        return [row for row in csvfile]