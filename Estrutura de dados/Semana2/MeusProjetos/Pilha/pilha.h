//pilha = stack
typedef int TipoItem;
const int max_itens = 100;

class pilha{
    private:
        int tamanho;
        TipoItem* estrutura;

    public:
        pilha();//contrutora
        ~pilha();//destrutora
        bool estacheia();//verifica se a pilha está cheia
        bool estavazia();//verifica se a pilha está vazia
        void inserir(TipoItem item);//push
        TipoItem remover();//pop
        void imprimir();//imprimir a pilha
        int qualtamanho();//lenght
};