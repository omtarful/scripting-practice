#!/usr/bin/python3 
import numpy as np
import pandas as pd 
#takes as input a file with transmembrane data and outputs unique and duplicate interactions in a file
data = pd.read_csv("TransmembraneData.txt", sep="\t", engine='python')
data.sort_values("protein_id_A")
data.drop_duplicates()
data_dict = data.to_dict()

f = open("TransmembraneData.txt", "r")
file = f.readlines()
f.close()
def getInteraction(idA, idB, columnA, columnB, index = 0):
    for i in range(index, len(columnA)):
        if(idB == columnA[i] and columnB[i] == idA):
            return i
    return -1
def findInteractions(columnA, columnB):
    interactions = []
    for i in range(len(columnA)):
        inde = getInteraction(columnA[i], columnB[i], columnA,columnB ,i+1)
        if inde != -1:
            interactions.append(i)
            interactions.append(inde)
    return interactions
def findDuplicateInteractions(columnA, columnB, interaction_hash):
    interactions = []
    for i in range(len(columnA)):
        inde = getInteraction(columnA[i], columnB[i], columnA,columnB ,i+1)
        if inde != -1:
            if(interaction_hash["error_rate_A"][inde] == interaction_hash["error_rate_B"][i] and interaction_hash["error_rate_A"][i] == interaction_hash["error_rate_B"][inde]  and interaction_hash["cost_A"][i] == interaction_hash["cost_B"][inde] and interaction_hash["cost_A"][inde] == interaction_hash["cost_B"][i] and interaction_hash["motif_A"][i] == interaction_hash["motif_B"][inde] ):
                interactions.append(i)
                interactions.append(inde)
    return interactions
def write2File(filename, arr):
    st = file[0]
    inter = open(filename, "w")
    st = file[0]
    for i in range(len(arr)):
        st += file[arr[i]+1] + "\n"
    inter.write(st)
    inter.close()

#normal number of interactions
interactions = findInteractions(data_dict["protein_id_A"], data_dict["protein_id_B"])
#this is the number of duplictate interactions
duplicate_interactions = findDuplicateInteractions(data_dict["protein_id_A"], data_dict["protein_id_B"], data_dict)
print("This is the number of initial interactions:" + str(int(len(interactions))))
print("This is the number of duplicate interactions: " + str(int(len(duplicate_interactions)/2)))
unique_interactions = list(set(interactions) - set(duplicate_interactions))
for i in range(len(duplicate_interactions)):
    if(i % 2 == 0):
        unique_interactions.append(duplicate_interactions[i])
unique_interactions = list(set(unique_interactions))
print("This is the number of unique interactions: " + str(int(len(unique_interactions))))
write2File("dulpicateInteractions.txt", duplicate_interactions)
write2File("uniqueInteractions.txt", unique_interactions)








   