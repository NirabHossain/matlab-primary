clear all
clc
A=randi(9,[10,8])
Ac=[A(2,1:3) A(5:10,7)']'
Ar=[A(:,8)' A(2:7,5)']
A(10,4:8)=[4 5 6 7 8]

