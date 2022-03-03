#!/usr/bin/python3
import os
import re
entries = os.listdir('PDBSumFiles/')
entries = entries[1:len(entries)]
#takes as in  put a list of PDBSum files and outputs interactions
print("This is the number of files that was processed: " + str(len(entries)))
file_comb = []
for filename in entries:
    f = open('PDBSumFiles/' + filename, "r")
    file_comb += f.readlines()
initial_indices = []
final_indices = []
last_index = -1
spaces_count = 0
for i in range(len(file_comb)):
    match = re.search("Non-bonded contacts.*$",file_comb[i])
    if(str(type(match)) != "<class 'NoneType'>" ):
        initial_indices.append(i)
file_c = ""
for i in range(len(initial_indices)):
    start = initial_indices[i] + 7
    line = file_comb[start].split(".")
    line[0] = line[0].strip(" ")
    while(line[0].isnumeric()):
        file_c += file_comb[start]
        start += 1
        line = file_comb[start].split(".")
        line[0] = line[0].strip(" ")
file_c  =file_c.split("\n")
file_c = file_c[0:len(file_c)-1]
interaction_hash = {}
for f in file_c:
    line = f.split()
    key = line[3] + "-" + line[9]
    if(key not in interaction_hash):
        interaction_hash[key] = 1
    else:
        interaction_hash[key] += 1


#convert that to a file
f = open("interactionStatistics.txt", "w")
aa = ["ala", "arg","asn","asp","cys","gln","glu","gly",
"his","ile","leu","lys", "met","phe", "pro","ser","thr", "trp","tyr","val"]
columns = "\t" +  "\t".join(aa) + "\n"
stats = ""
stats += columns
for i in range(len(aa)):
    stats += aa[i] +"\t"
    for j in range(len(aa)):
        key = aa[i].upper() + "-" + aa[j].upper() 
        if(key in interaction_hash):
            stats += str(interaction_hash[key]) + "\t" 
        else:
            stats += str(0) + "\t"
    stats += "\n"
f.write(stats)
f.close()


