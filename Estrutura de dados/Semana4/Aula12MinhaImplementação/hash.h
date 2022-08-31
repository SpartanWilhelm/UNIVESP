#include "aluno.h"

class Hash {
    public:
        Hash(int max_itens = 100);
        ~Hash();
        bool is_full() const;
        int getLenght() const;

        void retireveItem(Aluno& aluno, bool& found);
        void insertItem(Aluno aluno);
        void deleteItem(Aluno aluno);
        void print();
    private:
        int getHash(Aluno aluno);
        int max_items;
        int lenght;
        Aluno* structure;
};