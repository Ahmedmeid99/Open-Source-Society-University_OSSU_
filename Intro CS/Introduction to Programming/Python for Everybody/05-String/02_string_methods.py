my_str="Xjfdsfkjgsfkjsg-fhjakg: 0.8475"
# git number from string
pos=my_str.find(':')
print(pos) # 22
# slice (subString)
piece=my_str[pos+2:]

number=float(piece)

print(number) # 0.8475
################################
str=' aHmEd '
print(str.upper()) # AHMED
print(str.lower()) # ahmed
print(str.capitalize()) # ahmed
print(str.count('a')) # 1
print(str.index('H')) # 2 
print(str.lstrip()) # 'aHmEd'