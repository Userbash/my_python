#!/usr/bin/python

def gen_bin(M, prefix=""):
	if M == 0:
		print (prefix)
	else: 
	    for digit in "0", "1":	
	       gen_bin(M-1, prefix+digit)	 

def generate_numbers(n:int, m:int, prefix=None):
	 prefix = prefix or []
	 if m == 0:
	 	print (prefix)
	 	return
	 
	 for digit in range(n):
	        prefix.append(digit)
	        generate_numbers(n, m-1, prefix)
	        prefix.pop()

#Для двоичной систкмы
gen_bin(10)

#Для произвольной системы счисления 
generate_numbers(n=3, m=3)