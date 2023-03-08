
# [21]    Max and Min
# [22]    The Brothers
# [23]    capital or small or digit
# [24]    lowercase =><= upercase
# [25]    calculator
# [26]    First digit !
# [27]    Coordinates of a point

def split(words):
    arr = []
    word = ""
    for i in words :
        if i != " ":
            word = word + i
        elif i == " " :
            arr.append(word)
            word = ""
    arr.append(word)
    return arr

###################
# [21] Max and Min
###################

def get_min_max(input):
    max = None
    min = None
    arr = split(input)
    for i in arr:
        i = int(i)
        if max is None:
            max = i
        elif i > max:
            max = i
        
        if min is None:
            min = i
        elif i < max:
            min = i
        
    print('Max',max,'Min',min) 

get_min_max('10 3')
get_min_max('-7 -3')
get_min_max('7 3 15')

###################
# [22] The Brothers
###################
# ahmed ali , mohmed ali > ARE Brothers
# ali ahmed , ali mohmed > ARE Brothers

def is_brothers(first_one,second_one):
    arr_1=split(first_one)[1]
    arr_2=split(second_one)[1]
    if arr_1 == arr_2:
        print('ARE Brothers')
    else:
        print('ARE NOT Brothers')

# first_one = input('Enter first_one')
# second_one = input('Enter second_one')

# is_brothers(first_one,second_one)

################################
# [23] capital or small or digit
################################

def check_char(char):
    ascii=ord(char)
    if ascii >=48 and ascii < 65:
        print(char,'IS DIGIT')
    elif ascii >=65 and ascii < 97:
        print(char,'IS CAPITAL ALRHA')
    else:
        print(char,'IS SMALL ALRHA')

check_char('a') # a IS SMALL ALRHA
check_char('B') # B IS CAPITAL ALRHA
check_char('1') # 1 IS DIGIT

##############################
# [24] lowercase =><= upercase
##############################

def change_it(chart):
    result = 0
    ascii = ord(chart)

    if ascii >=65 and ascii < 97:
        # IS CAPITAL ALRHA
        result = chr(ascii+32)
    elif  ascii >= 97:
        # IS SMALL ALRHA
        result = chr(ascii-32)
    print(result) 

change_it('a') # A
change_it('N') # n
change_it('B') # b

#################
# [25] calculator
#################

def calc(input):
    input=str(input)
    arr = []
    f_num = arr[0]
    l_num = arr[1]
    if input.find('+') ==1:
        arr = input.split('+')
        print(f_num + l_num)
    elif '-' in input:
        arr = input.split('-')
        print(f_num - l_num)
    elif '*' in input:
        arr = input.split('*')
        print(f_num * l_num)
    elif '/' in input:
        arr = input.split('/')
        print(f_num / l_num)

    # arr=split(input)
    # f_num = arr[0]
    # op = arr[1]
    # l_num = arr[2]
    # if op == '+':
    #     print(f_num + l_num)
    # elif op == '-':
    #     print(f_num - l_num)
    # elif op == '*':
    #     print(f_num * l_num)
    # elif op == '/':
    #     print(f_num / l_num)

# calc('2+3')
# calc('21-3')
# calc('2*3')
# calc('10/2')
# n='ss+dd'
# print(n.split('+'))

####################
# [26] First digit !
####################
# 3 => ENEV
# 4 => ODD

def enev_or_odd(input):
    first_digit = int(input[0])
    if first_digit % 2 ==0:
        print('ENEV')
    else:
        print('ODD')
enev_or_odd('345')
enev_or_odd('457')