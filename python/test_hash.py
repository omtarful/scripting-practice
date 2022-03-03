#!/usr/bin/python3


hash1 = {
	'Manal' : 201705350 ,
	'jodeph' : 201805351 
}
print ("hello")
#take input from user 
name = input("Who are you looking for?")


 
#avoid errors
if name in hash1:
	print("Exists")
else:
	print("Does not Exist")


print(hash1[name])

hash2 = {
	'Manal' : 201705350 ,
	'jodeph' : 201805351 ,
	'x' : 20170980990
}

#intersection 
rdpSet=set(hash1)
namesSet=set(hash2)
#set outputs all keys and you can change it 
for name in rdpSet.intersection(namesSet) :
	print ("the similarities are ")
	print(name, hash2[name])
	print(name, hash1[name])

for value, key in hash1.items():
	print(key, value)
#join 
hi = " ".join(["this","is","scripting","class"])
#add numbers to the array
print (hi)

#sorted hash
sorted_hash = sorted(hash1)

for key in sorted_hash :
	print (key , hash1[key])

