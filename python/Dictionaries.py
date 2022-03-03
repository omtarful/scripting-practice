#!/usr/bin/python3

student = {'name':'John', 'Age':25, 'courses':['Math', 'CompSci']}
#print whole Dictionary
print(student)
#add keys
student['phone'] = '555-5555'
#Change Keys
student.update({'name':'Jane', 'Age':26, 'phone':'555-5555 '})
print(student)
#print a single element
print(student['name'])
#gives you just the keys
print(student.keys())
#gives you just the values
print(student.values())

#loop through every key in dictioanary
for key in student:
    print(key)
#Loop through every value in dictionary
for value in student:
    print(value)
#loop through every key and values
for key, value in student.items():
    print(key, value)

#Get it to output Not Found when key
#That is not found in the dictioanary is inputted
print(student.get("phone", 'Not Found'))
#They can also be an integer
student = {1:'John', 'Age':25, 'courses':['Math', 'CompSci']}
print(student[1])
#Delete key:def
del student['Age']
#Another way of deleting
age = student.pop('Age')

super_villians = {'Fiidle ' : 'Issaac Bowin',
                    'Captain Cold' : 'Leonard Snart',
                    'Mirror Master' : 'Sam Scudder',
                    'Pied Piper':'Thomas Peterson' }

print(super_villians['Captain Cold'])
