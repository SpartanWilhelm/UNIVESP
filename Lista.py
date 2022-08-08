lista = [1,2,3,4,5,6,7,8,9,10]
def selecionaPares(lista):
    listaPares=[]
    for elemento in lista:
        if elemento%2 == 0:
            listaPares.append(elemento)
    return listaPares

print(selecionaPares(lista))