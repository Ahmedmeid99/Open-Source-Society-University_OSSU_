##############################
# String
##############################
# Ahmed =>[A,h,m,e,d]

##############################
# Looping
##############################
name="Ahmed"
for letter in name:
    print('letter',letter)

##############################
# Get Count
##############################
count = 0
for letter in name:
    count = count + 1
print('count',count)

##############################
# Find 
##############################
find=False

for letter in name:
    if letter == "m":
        find=True
        print(letter,'is found?',find)
        break
    print(letter)

##############################
# Search
##############################
# Search about a in banana
fruit="banana"
a_count=0
for letter in fruit:
    if letter == "a":
        a_count=a_count+1
print('count letter "a" is',a_count)