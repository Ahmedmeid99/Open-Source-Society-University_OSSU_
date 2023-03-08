#############################################
# work with numbers 
#############################################
nums_arr=list()
nums_arr.append(1)
nums_arr.append(3)
nums_arr.append(4)
nums_arr.append(9)
print(nums_arr)
print(max(nums_arr)) # 9
print(min(nums_arr)) # 1
print(sum(nums_arr)) # 17
#############################################
# create array from string of file
#############################################
my_string = 'ahmed mohamed   ali hassan'
my_arr=my_string.split() # ['ahmed', 'mohamed', 'ali', 'hassan']
print(my_arr)
str_2='sadsad,asdsasda,ada,asda'
print(str_2.split(',')) #['sadsad', 'asdsasda', 'ada', 'asda']