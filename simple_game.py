#!/usr/bin/python

import sys
import os

class Game:
   def __init__(self, gamer_1, gamer_2, count):
   	 self.gamer_1 = gamer_1
   	 self.gamer_2 = gamer_2
   	 self.count = count


   def game_run(self):
   	  current_gamer = self.gamer_1
   	  #print (self.gamer_2, self.gamer_1, self.count, current_gamer)
   	  while self.count > 0:
   	  	print('Колличество оставшихся палочек: {}'.format(self.count))
   	  	while True:
   	  		number_to_delete = int(input('Ход игорока {} (1 - 3): '.format(current_gamer)))
   	  		if number_to_delete >= 1 and number_to_delete <= 3:
   	  			break
   	  	self.count -= number_to_delete
   	  	current_gamer = self.gamer_2 if current_gamer ==  self.gamer_1 else self.gamer_1
   	  print ('Победил  {}'.format(current_gamer))			

name = str(input('введите имя 1 игрока: '))
name2 = str(input('введите имя 2 игрока: '))
count = int(input('введите количество палочек для игры: '))


gamer = Game(name, name2, count)

gamer.game_run()

