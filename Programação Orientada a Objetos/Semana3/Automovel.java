public class Automovel extends Terrestre {
    private String cor;
    private int numPortas;
    private String placa;

    public Automovel(int capacidade, int numRodas, String cor, int numPortas, String placa){
        super(capacidade, numRodas);
        this.cor = cor;
        this.numPortas = numPortas;
        this.placa = placa;
    }
    //A anotação @Override deixa explicito que o método toString da classe mãe será sobreposta pelo da classe filha
    @Override
    public String toString(){
        String aux = super.toString() + " " + cor + " " + numPortas + " " + placa;
        return aux;
    }
}
