##################################
# get emails and phones in list 
##################################
import re

input=input('Enter File name :')
try:
    handle=open(input)
except:
    print(' file name notfild')
    quit()

text=''

for line in handle:
    text=text+line

emails=re.findall('\S+@\S+',text)
phons=re.findall('01[0-9]{9}',text)
print(emails)
print(phons)
 