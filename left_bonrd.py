#!/usr/bin/python
 
# Бинрный поиск 
# Для бинарного поиска массив должен бать отсортирован
# Если массив отсортерован то левая граница указывает на элемент меньше текущего 
# А правая граница показывает на элемент больше искомого

def left_bonrd(A,key):
	left = -1
	right = len(A)
	while right - len > 1:                  # Сближение границ
	  middle = (left + right) //2           # Стреляем в середину
	  if A[middle] < key:                   # Если условие выполнено то оно подходит приближенной левой границе  
	     left = middle                      # Левая граници преблизилась к середине
      else:                                   
         right = middle
    return left     





# Динамическаое программирование 
# Рекуретный алгоритм числ фибоначи
# Дероево фебаначи
# Колличество узлов дерева фебаначи равно числу фибаначи
# Или равно следующему чеслу от чесла фибаначи 

def fib(n):
	if n <=1:
		return n
	else:
	    return(fib(n-1) + fib(n-2))	

fib(4)	    	


n=4
fib1 = [0,1] + [0] * (n-1)

for i in range(2,n+1):
	fib1[i] = fib1[i - 1] +fib1[i -2]

def count_trajectortes(N,allowed:list):
	  k = [0,1, int(allowed)[2]] + [0] * (N-3)
	  for i in range(3,N+1):
	  	if allowed[i]:
	  		k[i] = k[i-1] + k[i-2] + k[i-3]

#Минимальная цена Достижение клетки N 

def count_min_cost(N,priste:list):
	C=[float("-inf"),price[1],price[1] + price[2]] + [0]*(N-2)
	  for i in range(3,N+1):
	  	c[i] = price[i] + min(c[i-1], c[i-2])


