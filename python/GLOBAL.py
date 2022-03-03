#!/usr/bin/python3



globalV=3

def method4():
	global globalV
	globalV=5
	print(globalV, "M4")


def method5():
	localVar="Local Variable"
	global globalV 
	print(globalV , "M5")



method4() 
method5()
print (globalV)
