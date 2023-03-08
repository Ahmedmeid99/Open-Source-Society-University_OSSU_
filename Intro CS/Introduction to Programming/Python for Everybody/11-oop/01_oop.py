class Person:
    name=''
    def __init__(self,name):
        self.name=name
        print(self.name)
    def rename(self,name):
        self.name=name
        print(self.name)

person_1=Person('ahmed') # ahmed
person_1.rename('eid') # eid
print(person_1.name) # eid

##########################################
##########################################

class Counter:
    x=0
    def __init__(self,x):
        self.x = x
    def up(self):
        self.x = self.x + 1
    def down(self):
        self.x = self.x - 1


counter_1=Counter(6)
print(counter_1.x)
counter_1.up()
counter_1.up()
print(counter_1.x)
counter_1.up()
counter_1.up()
print(counter_1.x)
