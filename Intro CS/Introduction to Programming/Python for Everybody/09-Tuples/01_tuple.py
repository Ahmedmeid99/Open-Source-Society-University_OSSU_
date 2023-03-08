#################################
# Tuples  المجموعات
#################################
# like list you can use index count
# but you can not chang it 
# tuple is faster then list 
x = (1,2,3)
print(x[0]) # 1
print(len(x)) # 3
(x,y,z) = (5,8,0)
print('x',x)
print('y',y)
print('z',z)
#################################
# dictionary to => Tuple
#################################
my_dic={
    'name':'ahmed',
    'age':23,
}
print(my_dic.items()) #dict_items([('name', 'ahmed'), ('age', 23)])
#################################
# Loop throw the Tuple
#################################

for (k,v) in my_dic.items():
    print(v,k)
#################################
# sort Tuples
#################################
print(sorted([(1,'s'),(2,"d"),(7,'x'),(6,"l"),(5,'s'),(3,"f")]))
