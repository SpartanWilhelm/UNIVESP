from func import soma, mult
def teste_soma():
    assert soma([1,2,3]) == 6, "Deve ser 6"

def teste_mult():
    assert mult([2,3,4]) == 24, "Deve ser 24"

if __name__ == "__main__":
    teste_soma()
    teste_mult()
    print('Tudo OK!')