names = ['ahmed','eid','ali','mohamed','hassan']

print(names[1])
print(names[1:4]) # slice
print(names[:])
names[1]='Ahmed'
names.sort() # sonting array

names.append('sayed') #add item to end
print(names)

names.pop() # remove from end
print(names)

names.insert(3,'sayed') #add item to center
print(names)

names.index('sayed') # get item using indix
print(names)

#############################################
# Loop 
#############################################
# [1]
arr=['a','b','c','d','e']
for i in arr:
    print(i) # 'a' 'b' 'c' 'd' 'e'

# [2]
for i in range(len(arr)):
    print(i) # 0 1 2 3 4 

#############################################
# Search 
#############################################
if 'c' in arr:
    print('yes there is')

if 'w' not in arr:
    print('yes there is not')
