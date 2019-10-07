#!/usr/bin/python

class NamedGreeter:
	def __init__(self, name):
		self.name = name
	def greet(self):
		print ("Hi my frend", self.name)

x = NamedGreeter('Alex')
x.greet()

class CreativeGriater:
	def invent_name(self):
		self.name = "Tom"
	def greet(self):
		print ("Hi my frend", self.name)

x = CreativeGriater()
x.invent_name()
x.greet()

#Атребут классв

class NamedGreeter2:
	def __init__(self,name):
		self.name = name 
	PREFIX = "Hi my name is"
	def greet(self):
		return self.PREFIX, self.name

x = NamedGreeter2('Quido')
x.PREFIX
x.greet()

class NamedGreeter3:
	def __init__(self, name):
		self.name = name
	def greet(self):
		print ("Hi my frend", self.name)

x = NamedGreeter('Alex')
x.name = 'jhon'
x.greet()

#Переопределение аревметики 
class Vector2D:
	def __init__(self,x,y):
		self.x = x
		self.y = y
	def __add__(self,other):
		return Vector2D(self.x + other.x, self.y + self.y)
	def __mul__(self,scalar):
		return Vector2D(self.x + scalar, self.y + scalar)

x = Vector2D(1, 2)
y = x * 2

# __sub__ Вычисдение		
# __div__ Деления
# __eq__  Сравнение на равенство
# __neq__ Сравнение на неравенство
# __len__ Длина обькта, функция len() пользуется этим опертором.
# __str__ Строковое  представление обьекта. Функция str() пользуется этим оператором 
# __call__ Оператор круглые скобки. Может принимать любые аргументы


# Атребуты кводратные сводки

class Vector_test_2D:
	...
	def __getitem__(self,index):
		if index == 0:
			return self.x
		elif index == 1:
			return self.y
	def __setitem__(self,index,volume):
		if index == 0:
			self.x = volume
		elif index == 1:
			self.y == volume