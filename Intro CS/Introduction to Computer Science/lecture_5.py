#################
# Tuples,Lists
#################

a =(24,'ahmed')
print(a[1]) # ahmed
print(len(a)) # 2
########
# swap
########

########
# [1]
b = 10
d="dd"
temp =b
b=d
d=temp
print('b',b,'d',d) # b dd d 10

########
# [2]
x=10
y=20
(x,y)=(y,x)
print('x',x,'y',y) # x 20 y 10

def min_max(x,y):
    """
    inputes type : int
    returns tuple (min,max)
    """
    max=None
    min=None
    if x > y and x != y:
        max=x
        min=y
    elif y > x and y != x:
        max=y
        min=x
    return (min,max)
(min,max)=min_max(10,20)
print(min,max) # 10 20 
(min,max)=min_max(7,2)
print(min,max) # 2 7
(min,max)=min_max(7,7)
print(min,max) # None None
def get_data(aTuple):
    nums=()
    names=()
    for t in aTuple:
        nums =nums+ (t[0],) # concat
        if t[1] not in names:
            names =names+ (t[1],) # concat
    min=''
    max=''
    return (min,max,names)

aTuple=((1999,'ahmed'),(2001,'eid'),(2005,'hassan'))

(min,max,names)=get_data(aTuple)
print('first one born in',min,'amd last one born in',max,', names is',' '.join(names))
        
##########
# List
##########
# [1]
my_list=['a','h','m','e']
for item in my_list:
    print(item)
# [2]
for i in range(len(my_list)):
    print(my_list[i])

# add one or more to list
my_list.append('d')
print(my_list) # ['a', 'h', 'm', 'e', 'd']

my_list.extend(['e','i','d'])
print(my_list) # ['a', 'h', 'm', 'e', 'd', 'e', 'i', 'd']

# remove item in list
del(my_list[0])
print(my_list) # ['h', 'm', 'e', 'd', 'e', 'i', 'd']

my_list.remove('e')
print(my_list) # ['h', 'm', 'd', 'e', 'i', 'd']

my_list.pop()
print(my_list) # ['h', 'm', 'd', 'e', 'i']

# string to list
name='a hmed'
print(list(name)) # ['a', ' ', 'h', 'm', 'e', 'd']

print(name.split()) # ['a', 'hmed']

print(name.split('h')) # ['a ', 'med']

# list to string
my_name=['a','h','m','e','d']
print(''.join(my_name)) # ahmed

print('_'.join(my_name)) # a_h_m_e_d

###########################
# clone (alias)
###########################

z=1
n=z
z=3
print(z,n) # 3 1

# side effect of append()
chars=['a','b','c']
chars_2=chars

chars_2.append('d')
print(chars,chars_2) # ['a', 'b', 'c', 'd'] ['a', 'b', 'c', 'd']

# use [:] to clone list is the best way
chars_main=['a','b','c']
chars_clone=chars

chars_2.append('d')
print(chars_main,chars_clone) # ['a', 'b', 'c'] ['a', 'b', 'c', 'd']
