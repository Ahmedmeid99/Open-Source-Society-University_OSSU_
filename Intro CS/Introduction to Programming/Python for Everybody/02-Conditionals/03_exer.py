hrs=input('Enter your Hours')
rats=input('Enter your Rates')
h=float(hrs)
r=float(rats)

if h <40:
    print("pay",r * h)
else :
    print("pay:",r * h*1.5)