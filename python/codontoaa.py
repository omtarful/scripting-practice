#!/usr/bin/python3
import re
import random
#converts codon to amino acid using codon table
# the program generates a file with the translation
def file_to_array():
    with open('Codon Table.txt') as f:
        file = f.readlines()[2:]
    return file
def file_to_hash():
    array_aa = file_to_array()
    dict = {}
    for i in range(len(array_aa)):
        arr = array_aa[i].split("\t") 
        codon = arr[0]
        aa = arr[2]
        if(not aa in dict.keys()):
            dict[aa] = [codon]
        else:
            dict[aa].append(codon)
        dict["\n"] = ""
    return dict

def translate_protein(filename):
    dict = file_to_hash()
    seq = ""
    with open(filename) as f:
        file = f.readlines()[1:]
    file = "".join(file)
    print("First sequence")
    seq += "First sequence\n"
    for i in file:
        arr = dict[i]
        if(i != "\n"):
            seq += arr[0]
            print(arr[0], end="")
    print("\nSecond sequence")
    seq += "\nSecond sequence\n"
    for i in file:
        arr = dict[i]
        if(i != "\n"):
            seq += arr[len(arr)-1]
            print(arr[len(arr)-1], end="")
    print("\nThird Sequence")
    seq += "\nThird sequence\n"
    for i in file:
        arr = dict[i]
        if(i != "\n"):
            k = random.randint(0, len(arr)-1)
            seq += arr[k]
            print(arr[k], end="")
    f = open("translation.txt", "w")
    f.write(seq)
translate_protein("protein.fasta")

