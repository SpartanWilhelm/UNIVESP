#include <iostream>

int main(){
    int number1;
    int number2;
    std::cout<<"Digite o primeiro numero: ";
    std::cin>>number1;
    std::cout<<"Digite o segundo numero: ";
    std::cin>>number2;

    int sum = number1 + number2;
    int sub = number1 - number2;
    int mult = number1 * number2;
    int div = number1 / number2;
    float divf = (float)number1 / (float)number2;
    int res = number1 % number2;

    std::cout<<"Soma = "<<sum<<std::endl;
    std::cout<<"Subtracao = "<<sub<<std::endl;
    std::cout<<"Multiplicacao = "<<mult<<std::endl;
    return 0;
}