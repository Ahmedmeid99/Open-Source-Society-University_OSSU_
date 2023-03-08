################################
# dont use split (python method)
################################
# [11]    sayHello to person
# [12]    split line where " " => in lines
# [13]    Simple Calculator + * -
# [14]    input "a b c d" output=> (a * b) - (c * d)
# [15]    Area of a Cricle
# [16]    sum last digit (12 13 => 5)
# [17]    Summation from 1 to n
# [18]    floor ceil round (10 / 3 =3.331 => 3 4 3) (4.5 => 4 5 5)
# [19]    yes or no ('10 9' 10 > 9 => yes)
# [20]    Multiples or no
import re
#############################
# [11] sayHello to person
#############################
# name = input('Enter Your Name')

# print('Hello',name)

#######################################
# [12] split line where " " => in lines
#######################################

def split_line(input):
    word = ""
    for i in input :
        if i != " ":
            word = word + i
        elif i == " " :
            print(word)
            word = ""
    # after loop dane print the last word in word
    print(word)

split_line("my name is ahmed 24 years old")
# my
# name
# is
# ahmed
# 24
# years
# old
#######################################
# [13] Simple Calculator
#######################################

def split_nums(words):
    arr = []
    num = ""
    for i in words :
        if i != " ":
            num = num + i
        elif i == " " :
            arr.append(num)
            num = ""
    arr.append(num)
    return arr

def cal_it(input):
    arr = split_nums(input)
    x=int(arr[0])
    y=int(arr[1])
    print(str(x),'+',str(y),'=',x + y)
    print(str(x),'*',str(y),'=',x * y)
    print(str(x),'-',str(y),'=',x - y)

cal_it('5 10')
# 5 + 10 = 15
# 5 * 10 = 50
# 5 - 10 = -5
#################################################
# [14] input "a b c d" output=> (a * b) - (c * d)
#################################################

def get_result(input):
    arr = split_nums(input)
    a = int(arr[0])
    b = int(arr[1])
    c = int(arr[2])
    d = int(arr[3])
    print((a*b)-(c*d))

get_result('1 2 3 4') # -10

#######################
# [15] Area of a Cricle
#######################
# 3.141592653 * (x*x)
def get_cricle_area(x):
    result = 3.141592653 * x**2
    print(result)

get_cricle_area(2) # 12.566370612

##################################
# [16] sum last digit (12 13 => 5)
##################################
def sum_l(input):
    arr = split_nums(input)
    x = int(arr[0][len(arr[0])-1])
    y = int(arr[1][len(arr[1])-1])
    print(x+y)

sum_l('12 13') # 5
sum_l('12 123') # 5
############################
# [17] Summation from 1 to n
############################
# 3 => 1+2+3 (6)
# 6 => 1+2+3+4+5+6 (21)

def sum_to(x):
    result = 0
    for i in range(x):
        i = i + 1
        result = result + i
    print(result)
sum_to(3) # 6
sum_to(10) # 55

################################################
# [18] floor ceil round (10 / 3 =3.331 => 3 4 3)
################################################

def get_num_after_dot(num):
    sub_num = 0
    if str(num).find('.') != -1:
        dot_index = str(num).index('.')
        all_sub_num = str(num)[dot_index + 1:]
        if len(all_sub_num)>1:
            sub_num = all_sub_num[0] + all_sub_num[1]
    return int(sub_num)

get_num_after_dot(3.34) # 34
get_num_after_dot(3.0) # 0
get_num_after_dot(3.) # 0
get_num_after_dot(3) # 0

def get_FCR(input):
    arr = split_nums(input)
    a = int(arr[0])
    b = int(arr[1])
    result = float(a / b) # 3.3
    floor=ceil=round=0
    floor=int(str(result)[0])
    if get_num_after_dot(result) == 0:
        ceil=floor
    elif get_num_after_dot(result)>0 and get_num_after_dot(result)<50 :
        ceil=floor + 1
        round = floor
    elif get_num_after_dot(result) >=50:
        ceil = floor + 1
        round = floor + 1
    print('floor',a,'/',b,'=',floor)
    print('ceil',a,'/',b,'=',ceil)
    print('round',a,'/',b,'=',round)


get_FCR('10 3')
# floor 10 / 3 = 3
# ceil 10 / 3 = 4
# round 10 / 3 = 3
#######################################
# [19] yes or no ('10 9' 10 > 9 => yes)
#######################################

def is_greater_than(input):
    arr = split_nums(input)
    a = int(arr[0])
    b = int(arr[1])
    if a > b:
        print('Yes',a,'>',b)
    else:
        print('No',a,'is not >',b)

is_greater_than('10 9') # Yes 10 > 9
is_greater_than('31 51') # No 31 is not > 51

######################
# [20] Multiples or no
######################

def is_multiples(input):
    arr = split_nums(input)
    a = int(arr[0])
    b = int(arr[1])
    comp_1 = str(a/b)
    comp_2 = str(b/a)
    sub_num_1 = re.findall('.([0-9]+)',comp_1)[0]
    sub_num_2 = re.findall('.([0-9]+)',comp_2)[0]
    if int(sub_num_1) == 0 or int(sub_num_2) == 0:
        print('Multiples') 
    else:
        print('No Multiples') 

is_multiples('3 9') # Multiples
is_multiples('9 3') # Multiples
is_multiples('12 5') # No Multiples