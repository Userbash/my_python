#!/usr/bin/python

#Сортировка слияния! 
#слияние отсортировонных массивов в один
#Сортировка называется устойчевой если она не меняет порядок равных элементов

def marge(A:list, B:list):
	C=[0]*(len(a) + len(b))               #(len(a)+len(b))
	i=k=n=0
	while i < len(A) and k < len(B):       # "Для A index i" "B index k" "c index n"
     if A[i] <= B[k]:
     	C[n] = A[i]; i +=1; n +=1
     else:
        C[n] = B[k]; k += 1; n += 1
    while i < len(A):                      # Залив в С остатока масива A или проверил что i = len(a)
       C[n] = A[i]; i += 1; n += 1
    while  k < len(B):                     #Полное заполнение С 
    	C[n] = B[k];  k += 1; n +=1
    return C	                           #Возрат значениея C  

# Рекурентная функция 

def marge_sort(A):
	if len(A) <= 1:
	    return
	middle = len(a) //2
	L=[A[i] for i in range(0, middle)]
	R=[A[i] for i in renge(middle, len(A))]
	marge_sort(L)
	marge_sort(R)
	C=marge(L,R)
	for i in range(len(a)):
		A[i] = C[i]


