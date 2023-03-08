##########################
# Recursion , Dictionary
##########################

def multe(x):
    if x == 1:
        return 1
    else:
        return x *  multe(x-1)

print(multe(4)) # 24
##########################

def sum(x):
    if x == 1:
        return 1
    else:
        return x + sum(x-1)

print(sum(3)) # 6
print(sum(4)) # 10
##########################

def print_move(fr,to):
    print('move from',str(fr),'to',str(to))

def towers(n,fr,to,spare):
    if n == 1:
        print_move(fr,to)
    else:
        towers(n-1,fr,spare,to)
        towers(1,fr,to,spare)
        towers(n-1,spare,to,fr)

# towers(4,'1','2','3')
"""
move from 1 to 3
move from 1 to 2
move from 3 to 2
move from 1 to 3
move from 2 to 1
move from 2 to 3
move from 1 to 3
move from 1 to 2
move from 3 to 2
move from 3 to 1
move from 2 to 1
move from 3 to 2
move from 1 to 3
move from 1 to 2
move from 3 to 2
"""

first_dict={}
first_dict['name']='ahmed eid'
first_dict['age']= 23
first_dict['fav']= ['react','css','js','python']

print(first_dict)
"""
{
    'name': 'ahmed eid',
    'age': 23,
    'fav': ['react', 'css','js', 'python']
}
"""

def count_words(arr_words):
    my_dict={}
    for word in arr_words:
        if word in my_dict:
            my_dict[word] +=1

        else:
            my_dict[word] =1
    return my_dict

arr=['ahmed','is','24','ahmed','is','ahmed','is','a','programmer','ahmed','is','fav','react']
d=count_words(arr)
print(d)

def get_common_word(dict_words:dict):
    count = 0 # 4
    word = ''
    for num in dict_words.values():
        if num > count:
            count = num
    for w,c in dict_words.items():
        if c == count:
           word += w
        break
    return word,dict_words[word]

print(get_common_word(d))