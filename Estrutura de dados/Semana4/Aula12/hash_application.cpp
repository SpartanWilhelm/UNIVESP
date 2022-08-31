#include <iostream>
#include "hash.h" 

using namespace std;

int main(){
   Hash alunosHash(10);
   int op;

   do{
      cout<<"Digite 1 para cadastrar um aluno"<<endl;
      cout<<"Digite 2 para buscar um aluno"<<endl;
      cout<<"Digite 3 para excluir um aluno"<<endl;
      cout<<"Digite 0 para sair"<<endl;
      cin>>op;
      if (op ==1){
        int ra;
        cout<<"Digite o RA do Aluno: ";
        cin>>ra;
        string nome;
        cout<<"Digite o nome do Aluno: ";
        cin>>nome;
        Aluno aluno = Aluno(ra, nome);
        alunosHash.insertItem(aluno);
      }
      if (op == 2){
        int raBusca;
        cout<<"Digite o RA do Aluno: ";
        cin>>raBusca;
        Aluno aluno(raBusca,"");  
        bool     found = false;
        alunosHash.retrieveItem(aluno, found);
        if (found == 0){
          cout << "Aluno nao encontrado!" <<endl;
        }else{
          cout << aluno.getNome() << " -> " << found << endl;  
        }        
        cout << "------------------------------" <<  endl;
      }
      if (op == 3){
        int raBusca;
        cout<<"Digite o RA do Aluno: ";
        cin>>raBusca;
        Aluno aluno(raBusca,"");
        alunosHash.deleteItem(aluno);
      }

      alunosHash.print();  
      cout << "------------------------------" <<  endl;  
   }while (op != 0);  
  cout << "Fim" << endl;  
}
