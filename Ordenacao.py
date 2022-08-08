import random

vetor = random.sample(range(100), 20)

def buble_sort(v):
    for i in range(len(v)-1):
        for j in range(len(v)-i-1):
            if v[j] > v[j+1]:
                v[j], v[j+1] = v[j+1], v[j]
        print(v)

def insertion_sort(v):
    for i in range(1,len(v)):
        x = v[i]
        j= i-1
        while j >= 0 and x < v[j]:
            v[j+1] = v[j]
            j -= 1
        v[j+1] = x
        print(v)

def merge_sort(v, ini, fim):
    if ini < fim:
        meio = (ini + fim) // 2
        merge_sort(v, ini, meio)
        merge_sort(v, meio+1, fim)
        intercala(v, ini, meio, fim)
    #print(v)

def intercala(v, ini, meio, fim):
    L = v[ini:meio+1]
    R = v[meio+1:fim+1]
    L.append(999) #sentinela
    R.append(999) #sentinela
    i=0
    j=0
    for k in range(ini, fim+1):
        if L[i] <= R[j]:
            v[k] = L[i]
            i += 1
            print("Troca L ",v)
        else:
            v[k] = R[j]
            j += 1
            print("Troca R ",v)
        #print(v)

def quick_sort(v, ini, fim):
    meio = (ini + fim) //2
    pivo = v[meio]
    print(v)
    print(pivo)
    i = ini
    j = fim
    while i < j:
        while v[i] < pivo:
            i += 1
            print(i, j)
        while v[j] > pivo:
            j -= 1
            print(i, j)
        if i <= j:
            v[i], v[j] = v[j], v[i]
            print("Troca ", v[i], " por ", v[j])
            print(v)
        i += 1
        j -= 1
    if j > ini:
        quick_sort(v, ini, j)
    if i < fim:
        quick_sort(v, i, fim)

def busca_binaria(l, x, ini, fim):
    meio = (ini + fim) // 2
    if fim < ini:
        return -1
    if x == l[meio]:
        return meio
    if x < l[meio]:
        return busca_binaria(l, x, ini, meio-1)
    if x > l[meio]:
        return busca_binaria(l, x, meio+1, fim)

print(vetor)
quick_sort(vetor, 0, len(vetor)-1)
busca_binaria(vetor, 800, 1, len(vetor)-1)

