# defination function
def computepay(hours,rates):
    if hours > 40:
        reg = rates * hours
        opt = (hours-40.0) * (rates-0.5)
        pay = reg - opt
    else:
        pay = rates * hours
    return pay 

sh = input('Enter Hours :')
sr = input('Enter Rates :')
fh = float(sh)
fr = float(sr)
# call it 
xp = computepay(fh,fr)

print("pay",xp)
