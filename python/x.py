#!/usr/bin/python3

import random

number=random.randrange(1,100)

guess=int(input('enter a guess '))

if number == guess:

   print ("you are the winner ")


elif number > guess:

   print ("what you enterd is less than the number \n")

else :

   print ("what you enterd is greater than the number \n")

