#include <iostream>
#include "fila.h"
using namespace std;

int main(){
    fila fila1;
    int opcao;
    TipoItem item;
    
    cout<<"Programa gerador de filas:\n";
    do
    {
        cout<<"Digite 0 para sair.\n";
        cout<<"Digite 1 para inserir um elemento.\n";
        cout<<"Digite 2 para remover um elemento.\n";
        cout<<"Digite 3 para imprimir a fila.\n";
        cin>>opcao;

        if (opcao == 1){
            cout<<"Digite o elemento a ser inserido.\n";
            cin>>item;
            fila1.inserir(item);
        }else if (opcao == 2){
            item = fila1.remover();
            cout<<"Elemento removido: "<<item<<endl;
        }else if (opcao == 3){
            fila1.imprimir();
        }

    } while (opcao != 0);


    return 0;
}