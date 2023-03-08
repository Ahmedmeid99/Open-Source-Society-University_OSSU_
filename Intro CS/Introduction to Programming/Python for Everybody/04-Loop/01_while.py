num=0
total=0
while True:
    string=input('Enter number')
    if string=="done":
        break
    try:
        fval=float(string)
    except:
        print('error')
        continue
    num=num + 1
    total = total+fval

print(total,num,total/num)
