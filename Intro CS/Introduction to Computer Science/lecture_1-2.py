##############################
## notes in lecture 01 & 02
##############################

#  concat numers and strings
print(1 + 2 + 3) # 6

print('a'+'b'+'c') # abc

# some tests
# print('1'+ 1) # TypeError error
# print('1'- 1) # TypeError error


# (*) operation with strings & numbers

print('s' * 3) # sss
print(2 * 3) # 6

# range method in for loop =>for i in range(start,end,step)
start=0
end=10
step=1
for i in range(start,end,step):
    print(i)
# 1 2 3 4 5 6 7 8 9 

# while condetion is True (while loop) will be infient loop
while True :
    print('infient loop ')
    print('click ( ctrl + c) to stop it')