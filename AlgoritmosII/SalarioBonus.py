numero1 = eval(input("Digite o número 1: ")) 
numero2 = eval(input("Digite o número 2: "))
numero3 = eval(input("Digite o número 3: ")) 
if (numero1 > numero2) and (numero1 > numero3) and (numero2 > numero3): 
     print("O maior número é o primeiro: ",numero1) 
if (numero2 > numero1) and (numero2 > numero3) and (numero3 > numero1): 
     print("O maior número é o segundo: ",numero2) 
if (numero3 > numero1) and (numero3 > numero2) and (numero1 > numero2): 
     print("O maior número é o terceiro: ",numero3) 
print("fim") 