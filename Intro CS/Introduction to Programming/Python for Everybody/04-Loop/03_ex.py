##############################
# write nums and when write done stop and 
# get the largest , smallest
# dont forget to fix errors
##############################
# 7 2 'bob' 10 4 
largest=None
smallest=None
def get_max(array):
    global largest
    for i in array:
        if largest is None:
            largest=i
        elif largest < i:
            largest=i
        else:
            continue
    return largest

def get_min(array):
    global smallest
    for i in array:
        if smallest is None:
            smallest=i
        elif i < smallest :
            smallest=i
        else:
            continue
    return smallest

my_array=[]
while True:
    num=input('Enter a number: ')
    if num=='done':
        get_max(my_array)
        get_min(my_array)
        break
    else:
        try:
            number=int(num)
            my_array.append(number)
        except:
            print('An Error...')
            continue

print('largest',largest)
print('smallest',smallest)