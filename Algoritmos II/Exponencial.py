a=eval(input ("Digite a base:"))
b=eval(input ("Digite o expoente:"))

def Exp(base,exp):
    if exp == 0:
        return 1
    else:
        return base*(Exp(base, (exp - 1)))

print(str(Exp(a, b)))