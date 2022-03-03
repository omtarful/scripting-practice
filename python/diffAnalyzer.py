#!/usr/bin/python3
import os
import sys
#This command found a  value above a certain thresfold in a given column
#but you have to know how to put the proper field separator
targetFile="/mnt/c/RNA-seq data/diff_out/gene_exp.diff"
f = open(targetFile, "r")

difile = f.readlines()

for line in difile[3:10]:
    print(line)
