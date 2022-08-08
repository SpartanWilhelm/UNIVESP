# Definir o problema: f(0) = 0, f(1) = 1, f(n) = f(n-1) + f(n-2) p n>= 2
# Definir a condição de término: n = 0 ou n = 1
# A cada chamada, se aproximar da condição de tpermino: A cada chamada, n é decrementado
import time

def fibRec(n):
    if n < 2:
        return n
    elif n == 1:
        return 1
    else:
        res = fibRec(n-1) + fibRec(n-2)
        return res

def fibIt(n):
    res = n
    a,b = 0,1
    for k in range (2, n+1):
        res = a + b
        a , b = b , res
    return res

m = dict()
def fibMem(n):
    if n < 2:
        return n
    elif m.get(n) != None:
        return m[n]
    else:
        m[n] = fibMem(n-1) + fibMem(n-2)
        return m[n]

n = 35
start = time.time()
print(fibRec(n))
print('Recursivo: {} segundos'.format(time.time() - start))
start = time.time()
print(fibIt(n))
print('Iterativo: {} segundos'.format(time.time() - start))
start = time.time()
print(fibMem(n))
print('Memória: {} segundos'.format(time.time() - start))