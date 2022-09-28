//fila = queue
typedef int TipoItem;
const int max_itens = 100;

class fila{
    private:
        int primeiro, ultimo;
        TipoItem* estrutura;
    public:
        fila();
        ~fila();
        bool estavazio();
        bool estacheio();
        void inserir(TipoItem item);
        TipoItem remover();
        void imprimir();
};
