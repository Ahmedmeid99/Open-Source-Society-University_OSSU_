###################################
# Object Oriented Programming (OOP)
###################################
class Coordinate(object):
    # define attributes here
    def __init__(self,x,y):
        self.x=x
        self.y=y

    def __str__(self):
        return "<"+str(self.x)+','+str(self.y)+">"
    
    def __add__(self,other):
        return "("+str(self.x)+","+str(self.y)+")" + " "+"("+str(other.x)+","+str(other.y)+")"
    # custom method (function)
    def distance(self,other):
        x_diff_sq = (self.x-other.x) ** 2
        y_diff_sq = (self.y-other.y) ** 2
        return (x_diff_sq + y_diff_sq) ** .5
    
    
first_c= Coordinate(2,3)
v=Coordinate(4,5)
print(first_c.x) # 2
print(first_c.distance(v))
# print(first_c) # before adding __str__ method "<__main__.Coordinate object at 0x0000016886F0BB50>"
print(first_c) # after <2,3>
print(Coordinate) # <class '__main__.Coordinate'>
print(type(Coordinate)) # <class 'type'>
print(isinstance(v,Coordinate)) # True

print(first_c + v) # (2,3) (4,5)