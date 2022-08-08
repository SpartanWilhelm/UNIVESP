a=eval(input ("Digite um número:"))

def Fat(n):
    if n == 0:
        return 1
    else:
        return n*(Fat(n-1))

print(str(Fat(a)))