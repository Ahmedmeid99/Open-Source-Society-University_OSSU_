ahmed=dict()
ahmed['name'] = 'Ahmed'
ahmed['age'] = 23
ahmed['favs'] = ['js','python','react']
print(ahmed) # {'name': 'Ahmed', 'age': 23, 'favs': ['js', 'python', 'react']}
print(ahmed['favs']) # ['js', 'python', 'react']
ahmed['age'] = ahmed['age']  + 1
print(ahmed['age']) # 24

##################################################
# get the count of most populer word in strig
##################################################
counts=dict()
str_1 = "the word that i love is learnning , the most ... is ... the"
arr = str_1.split()
print(arr)
for word in arr:
    counts[word]=counts.get(word,0) +1

print(counts) # {'the': 3, 'word': 1, 'that': 1, 'i': 1, 'love': 1, 'is': 2, 'learnning': 1, ',': 1, 'most': 1, '...': 2}

#################################
# loop throw dictionar
#################################
nums={
    'one':5,
    'two':28,
    'three':90,
    'four':82,
    'five':73,
}
print(nums.keys()) # dict_keys(['one', 'two', 'three', 'four', 'five'])
print(nums.values()) # dict_values([5, 28, 90, 82, 73])
print(nums.items()) # dict_items([('one', 5), ('two', 28), ('three', 90), ('four', 82), ('five', 73)])
# for key in nums:
#     print(key,nums[key])

for key,value in nums.items():
    print(key,value)