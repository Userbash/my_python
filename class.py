#!/usr/bin/python
   
#ООП
class Person:
   def __init__(self, name,age):
   	 self.name = name
   	 self.age = age


   def print_info(self):
   	  print (self.name, "is", self.age)


jon = Person("jon", 22)
lucy = Person("lucy", 21)

jon.print_info()
lucy.print_info()


##Атребут функции 

class Myobject:
  class_attribute = 44
  def __init__(self):
  	self.data_attribute = 42
  def instance_method(self):
  	print (self.data_attribute)


  @staticmethod
  def static_method():
  	print (Myobject.class_attribute)
if __name__ == "__main__":
	Myobject.static_method()
	obj = Myobject()
	obj.instance_method()
	obj.static_method()
	