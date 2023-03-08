###############################
# First program in python
###############################
print('wellcome')
name=input('what is your name?')
print('hello',name)

date=input('when were you born (year)?') #1999
age=2023-int(date)
print("your age is", age)

ask=input('do you want anther thing?')
try:
    if ask=="yes":
        input("what do you want?")
        print('Sorry cant continue...')
    else:
        print('ok, have a noce day')
except:
    print('Sory, an error happen...')