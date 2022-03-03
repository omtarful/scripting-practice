#!/usr/bin/python3

#takes as input the numbr of elements, the elements and it's weights and returns a weighted sum
N = int(input())
X_str = input()
W_str = input()
W = W_str.split(" ")
X = X_str.split(" ")
X  = [int(x) for x in X ]
W = [int(x) for x in W ]
sum = 0
for i in range(len(X)):
    sum += W[i]*X[i]
weight_sum = 0
for w in W:
    weight_sum += w

print( sum/weight_sum)
    
