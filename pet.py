#!/usr/bin/env python3

''' algorim afklid '''

def pow(a, n):
 if n == 0:
   return 1
 elif n % 2 == 1:
   return pow(a, n-1)*a
 else:
   return pow(a**2, n//2)

pow(n=20, a=20)

''' faktorial '''

def f(n):
  assert n >=0, "error"
  if n == 0:
    return 1
  return f(n-1)*n   

def matryoshka(n):
  if n == 1:
     print ("matryoshka")
  else:
    print ("top n=", n)
    matryoshka(n-1)
    print ("down n=", n)

matryoshka(5)
