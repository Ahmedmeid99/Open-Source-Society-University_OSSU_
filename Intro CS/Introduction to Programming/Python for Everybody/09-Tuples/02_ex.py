###############################################
# your task is get 5 of the most common words
###############################################
#{'email': 8, '....jgsdfgkjsgfkjsgfkjgsfb': 2, 'jwelrkh': 8, 'ewlkrw': 8, 'rwgerjkwgkrw': 8, 
#'email..sfdjgsdfgkjsgfkjsgfkjgsfb': 2, '..fsfssdfgkjsgfkjsgfkjgsfb': 2, 'jwelerjkwgkrwdsg': 2, 
#'gdvfa-spin': 2, '....fgsfsdfgkjsgfkjsgfkjgsfb': 4}

handle=open('file.txt')

my_dict=dict()

for line in handle: 
    words = line.split()
    for word in words:
        my_dict[word]=my_dict.get(word,0)+1

arr=list()
for (k,v) in my_dict.items():
    arr.append((v,k))

result=sorted(arr,reverse=True)

for (v,k) in result[:5]:
    print(v,k)

# 8 rwgerjkwgkrw
# 8 jwelrkh
# 8 ewlkrw
# 8 email
# 4 ....fgsfsdfgkjsgfkjsgfkjgsfb
