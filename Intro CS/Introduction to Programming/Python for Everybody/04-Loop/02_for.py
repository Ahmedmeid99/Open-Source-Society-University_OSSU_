##############################
# for
##############################
print('Start')

for i in [1,2,3,4,5]:
    print(i)

print('End')

##############################
frinds=['ahmed','eid','ali']
for frind in frinds:
    print('hello',frind)

##############################
# get total
##############################
nums=[1,2,3,4,5,6,7]
total=0
for num in nums:
    total=total+num

print('total',total)
##############################
# get the count
##############################
ns=[1,2,3,4,5,6,7]
count=0
for n in ns:
    count=count+1

print('count',count)
##############################
# get the max number
##############################
numbers=[1,2,3,4,51,6,7]
max_num=-1
for i in numbers:
    if i > max_num:
        max_num=i
    else:
        continue

print('max_num',max_num)
##############################
# get the min number
##############################
my_numbers=[1,2,3,4,51,6,7,0]
min_num=None
for i in my_numbers:
    # set first num as min_num
    if min_num is None:
        min_num=i
    elif i < min_num:
        min_num=i
    else:
        continue

print('min_num',min_num)
##############################
# Filtering
##############################
data=[12,3,4,54,67,0,9]

for num in data:
    if num > 20:
        print('large number',num)
##############################
# search & find
##############################
d=['1',2,3,4,5,6,0,'3']
state=False
for n in d:
    if n == 3:
        state=True
print(state) #True
