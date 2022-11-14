package ExercicioApoio.Probabilidade;

public class teste {
    public static void main(String[] args){
        Suporte s = new Suporte();
        Integer n = 4;
        Integer k = 0;
        Integer sigma = 6;
        Integer tempo = 1;

        System.out.println(s.combinacao(n,k));
        System.out.println(s.distribuicaoBinomial(n, 0.99, k)*100 + "%");
        System.out.println(s.distribuicaoPoisson(tempo, k, sigma)+"%");
    }
    
}
