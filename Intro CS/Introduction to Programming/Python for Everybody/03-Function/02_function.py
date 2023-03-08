##########################
def sayHello(name):
    print('Hello',name)

def checkAge(age):
    try:
        if age < 15:
            print("still young")
        elif age < 55:
            print('your age is 15:55')
        else:
            print('you are old')
    except:
        print('An Error...')

checkAge(12)
checkAge(15)
checkAge(19)