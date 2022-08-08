a = eval(input("Digite o lado 1:"))
b = eval(input("Digite o lado 2:"))
c = eval(input("Digite o lado 3:"))
maiorLado = max(a,b,c)
if maiorLado < a+b+c-maiorLado:
    print("Os lados formam um triângulo!")
    if a == b and a == c and b ==c:
        print("Triângulo equilátero!")
    elif a != b and a!= c and b!= c:
        print("Triângulo escaleno!")
    else:
        print("Triângulo isóceles!")
else:
    print("Os lados não formam um triângulo!")
