//Pilha dinâmica = Dynamic Stack

typedef int TipoItem;

struct No{ // Node
    TipoItem valor;
    No* proximo;
};

class pilhadinamica{
    private:
        No* NoTopo;
    public:
        pilhadinamica();
        ~pilhadinamica();
        bool estavazio();
        bool estacheio();
        void inserir(TipoItem item);
        TipoItem remover();
        void imprimir();
};