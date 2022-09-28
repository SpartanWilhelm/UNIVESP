#include <iostream>

int main () {
    int *p, q, acm = 35;
    p = &acm;
    q = *p;

    std::cout<<p<<"\n"<<std::endl;
    std::cout<<q<<"\n"<<std::endl;

    std::cout<<"Hello World\n"<<std::endl;
    return 0;
}