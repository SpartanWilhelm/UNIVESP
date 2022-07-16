import math
a = int(input('Digite o valor de A diferente de 0: '))
while a == 0:
  a = (int(input('O valor de A deve ser diferente de 0, digite o valor de a: ')))
b = int(input('Digite o valor de B: '))
c = int(input('Digite o valor de C: '))
delta = int((b**2) - 4 * a * c)
if delta < 0:
  print('Não existem soluções reais para esta equação!')
elif delta == 0:
  raizDelta = math.sqrt(delta)
  x1 = int((-b + raizDelta) / 2 * a)
  print('A equação possui apenas uma solução, que é igual a ',x1)
else:
  raizDelta = math.sqrt(delta)
  x1 = int((-b + raizDelta) / 2 * a)
  x2 = int((-b - raizDelta) / 2 * a)
  print(f'A equação possui duas raizes, que são ', x1, ' e ',x2)
