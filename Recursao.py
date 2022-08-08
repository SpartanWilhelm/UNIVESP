# Definir o problema: n! = n * (n-1)
# Definir a condição de término: n = 0
# A cada chamada, se aproximar da condição de tpermino: A cada chamada, n é decrementado

def fat(n):
    if n == 0:
        return 1
    else:
        res = n * (fat(n-1))
        return res

fat(4)