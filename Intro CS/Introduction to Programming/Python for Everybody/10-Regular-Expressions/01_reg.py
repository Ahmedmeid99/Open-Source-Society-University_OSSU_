########################################
# Regular Expression
########################################
# ^ from start , $ from end
# + one ore more , * zero or more
# . all chars
# \S all chars (not space)
# \s only space
# [0-9] range of number
# [a-z] range of a to z
# () return what insid it
# {9} 9 chars

# re.findall() => array of mathes results
# re.search() => True , False

import re

str='email ..fsfssdfgk12jsgfkjsgfkj 7gsfb ahmed@gmail.com 9 jwelerjkwgkrwdsg 23 2gdvfa-spin'

########################################
# check if ahmed@gmail.com in the String or not
if re.search('\S+@\S+',str):
    print('yes')
else:print('no')
 # yes
########################################
# get ahmed@gmail.com from the String
email= re.findall('\S+@\S+',str)
print(email) #['ahmed@gmail.com']
print(email[0]) #'ahmed@gmail.com'

########################################
# get number from the String 
nums=re.findall('[0-9]+',str)
nums2=re.findall('[0-9]{2}',str)
print(nums) #['12', '7', '9', '23', '2']
print(nums2) #['12', '23']

########################################
# old way (split) not dynamic
########################################
my_results=str.split()
print(my_results[3]) #'ahmed@gmail.com'