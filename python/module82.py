#!/usr/bin/python3

def appendToList(list):
	list.append("New Element") #original function will change 
l=['Old Element1','Old Element2']
print('Outer list, before =', l)
appendToList(l)
print('Outer list, after =', l)
	


def appendToList2(list):


	list=list+['New Element1','New Element2']
print("Inner list",list)
l=['Old Element1','Old Element2']
print('Outer list, before =', l)
appendToList(l)
print('Outer list, after =', l)
	

