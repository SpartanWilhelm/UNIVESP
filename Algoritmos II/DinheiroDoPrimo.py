dinheiro = eval(input('Digite quanto você possui guardado: '))
dinheiroDoPrimo = dinheiro/3
print(f"Dinheiro do primo: R$ {dinheiroDoPrimo: 0.2f}")
mes = 0
while dinheiro > dinheiroDoPrimo:
    dinheiroDoPrimo += dinheiroDoPrimo * 2 / 100
    mes += 1
print("Seu primo levou ",mes, " meses para te superar.")
print(f"Dinheiro do primo: R$ {dinheiroDoPrimo: 0.2f}")