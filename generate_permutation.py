#!/usr/bin/python
  
def find(number, A):
     for x in A:
     	if number == x:
     		return True
     	return False	

             
def generate_permutation(N:int, M:int=-1, prefix=None):
	M = N if M == -1 else M
	prefix = prefix or []
	if M == 0:
		print(*prefix)
		return
	for number in range (1, N+1):
		if find(number, prefix):
			continue
		prefix.append(number)
		generate_permutation(N, M-1, prefix)
		prefix.pop()	

	  	

generate_permutation(3)     	