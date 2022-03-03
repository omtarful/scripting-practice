#!/usr/bin/python3


f = open("./../PerlProjects/BLOSUM.txt")

#Switch columns
for line in f.readlines():
    nl = line.rstrip().split(" ")
    if "" in nl:
        
    print(nl)
