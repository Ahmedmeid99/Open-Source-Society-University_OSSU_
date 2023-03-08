###################
# Inheritance & OOP
###################

class Animal(object):
    # Attributes
    def __init__(self,age):
        self.age = age
        self.name = None
    # getter
    def get_age(self):
        return self.age
    def get_name(self):
        return self.name
    # setter
    def set_name(self,name):
        self.name = name
    def set_age(self,age):
        self.age = age
    # print
    def __str__(self):
        return "<Animal>" + "," + str(self.age)
######################################

class Cat(Animal):
    def speak(self):
        print('meow')
    def __str__(self):
        return "<Cat>" + "," + str(self.age)
######################################

class Person(Animal):
    def __init__(self,name,age):
        # pass self , age to parent class
        Animal.__init__(self,age)
        self.name = name
        self.frinds = []
    # 
    def add_frind(self,frindName):
        self.frinds.append(frindName)
    # getter
    def get_frinds(self):
        return self.frinds
    # 
    def __str__(self):
        return "<Person>" + "," + str(self.name)+" "+ str(self.age) 
# [1]
me = Person('ahmed',23)
print(me) # <Person>,ahmed 23
print(me.get_name()) # ahmed
print(me.get_age()) # 23
me.set_age(24)
me.add_frind('eid')
me.add_frind('ali')
print(me.get_frinds()) # ['eid', 'ali']
print(me) # <Person>,ahmed 24

# [2]
my_cat = Cat(3)
my_cat.speak() # meow
print(my_cat) # <Cat>,3

class Rabbite(Animal):
    tag = 1
    def __init__(self,age,parent_1=None,parent_2=None):
        Animal.__init__(self,age)
        self.parent_1 = parent_1
        self.parent_2 = parent_2
        Rabbite.rid = Rabbite.tag
        Rabbite.tag += 1
    # getter
    def get_age(self):
        return self.age
    def get_parent_1(self):
        return str(self.parent_1)
    def get_parent_2(self):
        return str(self.parent_2)
    def get_rid(self):
        return str(self.rid).zfill(3)
    # setter
    def set_age(self,age):
        self.age = age
    def set_parent_1(self,parent_1):
        self.parent_1 = parent_1
    def set_parent_2(self,parent_2):
        self.parent_2 = parent_2
    # add operation method
    def __add__(self,other):
        # R1 + R2
        return Rabbite(0,self,other)
    def __str__(self):
        return '<' + 'Rabbite' + '>' +'rid:'+ str(self.rid)

r_1 = Rabbite(2)
r_2 = Rabbite(3)
r_3 = r_1 + r_2
print(r_3) # <Rabbite>rid:3
print(r_3.get_parent_2()) # <Rabbite>rid:3
r_1.set_parent_1('rabbit 04')
print(r_1.get_parent_1()) # rabbit 04

