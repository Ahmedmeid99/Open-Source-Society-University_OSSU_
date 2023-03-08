####################
# Debuging & Testing
####################

def positive_num(x):
    """
    input : number
    return : possitive number
    """
    try:
        if x < -1:
            return -x
    except ValueError :
        print('ValueError')
    except TypeError :
        print('TypeError')
    except :
        print('unknow error')
        
positive_num('s') # TypeError
print(positive_num(-1)) # None this is bug fix it by change x < -1 to x < 0

########################

def avg(grades):
    assert len(grades) != 0 ,'no grades data'
    return sum(grades) /len(grades)

print(avg([1,2,3]))
print(avg([])) # AssertionError: no grades data