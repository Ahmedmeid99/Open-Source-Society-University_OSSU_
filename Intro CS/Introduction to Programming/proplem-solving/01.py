#     [1] ahmed => demha
#     [2] hi my name is ahmed => ahmed is name my hi
#     [3] sum all num in string ("nums is 1 31 9 8 and 20 5 9" => 83)
#     [4] get count of array or string
#     [5] git max , min (the talles and shortest man)
# (x) [6] sort array (pure)
#     [7] serch in array & string
#     [8] filter array
# (x) [9] list dataStructure
#     [10] aaa => zzz
import re

####################
# [1] ahmed => demha
####################

def revirce_str(word):
    result = ""
    end = len(word)
    while end != 0:
        result = result + word[end-1]
        end = end - 1
    print(result)

revirce_str('ahmed') #demha

#################################################
# [2] hi my name is ahmed => ahmed is name my hi
##################################################

def revirce_arr(string):
    arr=string.split()
    result = ""
    end = len(arr)
    while end != 0:
        result = result + arr[end-1] + " "
        end = end - 1
    print(result)

revirce_arr('hi my name is ahmed') # ahmed is name my hi

###########################
# [3] sum all num in string
###########################


# get sum from array of num
def sum(arr):
    result = 0
    for i in arr:
        result =result + int(i)
    return result

def get_str_sum(input):
    if type(input) == str and re.search('nums',input):
        nums_arr = re.findall('[0-9]+',input)
        if len(nums_arr)==0:
            print('No numbers here')
        else:
            print(sum(nums_arr)) 
    else:
        print('not valid input')

input = "nums is 1 31 9 8 and 20 5 9"
get_str_sum(input) # 83
get_str_sum("nums") # No numbers here
get_str_sum(3) # not valid input

##################################
# [4] get count of array or string
##################################

def count(input):
    count = 0
    for i in input:
            count = count + 1
    return count

def get_count(input):
    if type(input)==list:
        print('array',count(input))
    elif type(input)==str:
        print('string',count(input))
    else:
        print('input is not string or array')

get_count([1,3,5,6,4,3]) # array 6
get_count('ahmed') # string 5
get_count(3) # input is not string or array

#################################################
# [5] git max , min (the talles and shortest man)
#################################################
data = [
    {
        'name':'ahmed',
        'tall':1.88,
        'age':33
    },
    {
        'name':'eid',
        'tall':1.90,
        'age':28
    },
    {
        'name':'ali',
        'tall':1.55,
        'age':18,
    },
]

def get_results(data):
    tall=old=0
    tallest_man = oldest_man = ''
    for man in data:
        if float(man['tall']) > tall:
            tall = float(man['tall'])
            tallest_man = man['name']
        if int(man['age']) > old:
            old = int(man['age'])
            oldest_man = man['name']
    print('the old man is',oldest_man,old,'years old','and the tallest is',tallest_man,tall,'m')

get_results(data) # the old man is ahmed 33.0 years old and the tallest is eid 1.9 m

################
# [6] sort array
################
# Buble sort

def sort_arr(arr):
    for j in range(len(arr)):
        for i in range(len(arr)):
            print(arr[i])
            if arr[i] > arr[i+1]:
                small = arr[i+1]
                arr[i] = arr[i+1]
                arr[i+1] = small
            else:
                continue
    print(arr)
arr_nums = [1,2,4,5,7,33,9,0]
# sort_arr(arr_nums)

#############################
# [7] serch in array & string
#############################

def search_about(input,word):
    if type(input)== str:
        # or use regular exprestion
        arr = input.split()
        for i in arr:
            if i == word:
                print('yes find it in string => ',word)
            else:
                continue
    elif type(input)== list:
        for i in input:
            if i == word:
                print('yes find it in array =>',word)
            else:
                continue

names_arr = ['ahmed','mohamed','eid','ali']
names_str = 'ahmed mohamed eid ali'

search_about(names_arr,'ahmed')
search_about(names_str,'ali')

#####################
# [8] filter array
####################
def filter_oldest(arr):
    result=[]
    for i in arr:
        if i >= 30:
            result.append(i)
        else:
            continue
    print(result)

users_age=[12,32,4,51,13,62,20,30] # item >= 30 =>[ , , ]
filter_oldest(users_age)

#########################
# [9] list dataStructure
#########################
class My_list:
    pos=0
    list_size=0
    data_store=[]

    def append(self,new_item):
        self.data[self.list_size]=new_item
        self.list_size=self.list_size + 1
    def lenth(self):
        return self.data_store
    # def __init__(self,name):
    #     self.name=name
    

# list_01=My_list()

# My_list.append('a')



######################
# [10] aaa => zzz
######################
chars=[
    'a','b','c','d','e','f','g','h','i',
    'j','k','l','m','n','o','p','q','r',
    's','t','u','w','x','y','z'
]

def get_range_3(arr):
    for i in arr:
        for j in arr:
            for k in arr:
                print(i,j,k)

# click (ctrl + c) in command line terminal to stop loop
# get_range_3(chars)