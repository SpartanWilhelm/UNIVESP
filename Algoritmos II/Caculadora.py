numero = eval(input("Digite o número: "))
baseNumero = eval(input("Digite a base do número: "))
#novaBase = eval(input("Digite a nova base para o número"))

def convertNumero(num, baseNumero):
    lista = []
    while num > 0:
        rem = num % baseNumero
        lista.append(rem)
        num = num // baseNumero
        lista.reverse()
    return lista


print(convertNumero(numero, baseNumero))
