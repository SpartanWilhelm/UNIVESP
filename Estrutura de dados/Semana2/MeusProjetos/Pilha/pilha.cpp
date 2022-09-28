#include <iostream>
#include "pilha.h"

using namespace std;


    pilha::pilha()
    {
        tamanho=0;
        estrutura = new TipoItem[max_itens];
    }
    pilha::~pilha()
    {
        delete [] estrutura;
    }
    bool pilha::estacheia()
    {
        return (tamanho == max_itens);
    }
    bool pilha::estavazia()
    {
        return (tamanho == 0);
    }
    void pilha::inserir(TipoItem item)
    {
        if (estacheia()){
            cout<<"A pilha está cheia!\n";
            cout<<"Não é possível inserir este elemento.\n";        
            } else {
                estrutura[tamanho] = item;
                tamanho++;
            }
    }
    TipoItem pilha::remover()
    {
        if (estavazia()){
            cout<<"A pilha está vazia!\n";
            cout<<"Não existe elemento a ser removido!";
            return 0;
        } else {
            tamanho--;
            return estrutura[tamanho];
        }
    }
    void pilha::imprimir()
    {
        cout<<"Pilha: [ ";
        for (int i=0 ; i<tamanho ; i++){
            cout<<estrutura[i]<<" ";
        }
        cout<<"]\n";
    }
    int pilha::qualtamanho()
    {
        return tamanho;
    }