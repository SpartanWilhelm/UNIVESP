import math
a = int(input('Digite o valor de A: '))
b = int(input('Digite o valor de B: '))
c = int(input('Digite o valor de C: '))
delta = b^2-4*a*c
x1 = (-b+sqrt(delta))/2*a
x2 = (-b-sqrt(delta))/2*a
if delta < 0:
  print('Não existem soluções reais para esta equação!')
elif delta == 0:
  print('A equação possui apenas uma solução, que é igual a ',x1)
else:
  print('A equação possui duas raizes, que são ', x1, ' e ',x2)
