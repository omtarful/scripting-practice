#!/bin/bash

#This command found a  value above a certain thresfold in a given column
#but you have to know how to put the proper field separator
head gene_exp.diff | awk -F"\t" '$9>1.02'
