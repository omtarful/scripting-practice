#!/usr/bin/python3
#This script reads every number in "input04.txt" and gets the mean, median and mode
file = open("input04.txt", "r")
N = eval(file.readline()) #reads a line in file
X = []
#loop through every line and split into individual numbers
for x in file:
    X = X + x.split(" ") 
#Finds most frequent value in dataset (mode) 
def most_frequent(List): #list as input
    counter = 0
    num = List[0] 
    #loops through every number till it finds most frequent one
    for i in List: 
        curr_frequency = List.count(i) 
        if(curr_frequency> counter): 
            counter = curr_frequency 
            num = i 
  
    return num 
#converts every elemnet into an integer
X = [int(i) for i in X]
#calculates the mean
mean = sum(X)/N
#sorts for the next step which is getting the median
X.sort()
median = X[int(N/2-1)] + X[int(N/2)]
median = median/2
freq = X.count(max(set(X), key=X.count))
mode = most_frequent(X)
print ("mean: %.1f" % mean)
print ("median: %.1f" % median)
print ("mode: %d" % mode)

