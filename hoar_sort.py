#!/usr/bin/python
 
#Сортировка тонни хоара (quicSort)

def hoar_sort(A):
	if len(A) <= 1:   # Крайний случай
		return
	berrier = A[0]            # Барьерный элемент
	L = []                    # Создание элементов, появление обьекта  
	M = []                    # [] Пустой список   
	R = []                    # [] Пустой список  
	for x in A:               # Проход по A
	   if x < berrier:        # Если x меньше барьерного элемента
          L.append(x)         # Довавить в конец L значение x
       elif x == berrier:     # Если x жестко равен барьерному элементу
            M.append(x)       # Довавить в конец M значение x
       else:                  # или 
       	    R.append(x)       # Довавить в конец R значение x
    hoar_sort(L)              # Сортировка L 
    hoar_sort(M)              # Сортировка M   
    k = 0                     # Щечтчик, кровень заполнонености
    for x in L + M + R:       # Контенинация списков слияние массивов
      A[k] = x 
      k +=1

#Проверка отсортированности массива
  def check_sorted(A, ascending = True):  # Ascending = True, проверка что массив 
   """ Проверка отсортированности         # парядочен по умолчанию если False по убыванию
       за O(len(A)) """
       s = 2*int(ascending) -1            # Из 1 делаем 1 из 0 делаем -1 
       flag = True                        # Флаг что массив отсортирован 
        for i in range(0, N-1):           # Прогрессия от 0 до N-1, что-бы не выте за длину массива
           if s*A[i] > s*A[i + 1]:
              flag  = False 
              break
        return flag
        
#Бинарный поиск массива

