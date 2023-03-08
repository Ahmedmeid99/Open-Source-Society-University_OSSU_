##############################
## notes in lecture 03 & 04
##############################

# we can compare strings using > , >= , < , <= , == 
print('a'>'b') # False
print('a'<'b') # True

# we can thank that string is an array it's created by list of chars
# so we can loop in it or get length using len() method and get char by index string[i]

str = 'ahmed'

print(len(str)) # 5
print(str[1]) # h

for char in str:
    print(char) # a h m e d

# gusses game
start = 0
end = 100
# _ is gusses place
#1 0------_-------50--------------100
#2 0------25--_---50
#3 25--38-_-50
#4 38--44-_-50
#5 44--47-_-50
#6 your gusses will be 
#7 47 or 48 or 49 or 50

###############################
# lecture 04

# using """ """ to write many lines of code
"""
first mulity lines of comment
"""

# the reson of sing function is ...
# Decomposition -> التحلل
# Abstraction -> التجرد

# notes
# function have local invironment = scope 
# in function we can insert any thing like local variable, loop, condection, functoin, call-itself

# how to create and call function
def is_even(i):
    """
    Input: i, is positive int
    return True if i is even
    otherwise return False
    """
    print('inside is_even')
    return i % 2 == 0

print(is_even(3)) # False
print(is_even(4)) # True

# types of Function is
# [1] return somthing
# [2] return None (haven't return keyword)

# understanding scope consept 
def g(x):
    def h():
        x = 'abc'
    x = x + 1
    print('g: x =',x)
    h() # return None
    return x

x = 3
z = g(x) # g: x = 4
print ('z =',z) # z = 4


