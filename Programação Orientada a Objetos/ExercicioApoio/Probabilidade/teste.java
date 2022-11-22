package ExercicioApoio.Probabilidade;

public class teste {
    public static void main(String[] args){
        Suporte s = new Suporte();
        Integer n = 200;
        Integer k = 140;
        Integer sigma = 65;
        Integer tempo = 2;

        //System.out.println(s.combinacao(n,k));
        System.out.println(s.distribuicaoBinomial(n, 65.0, k)*100 + "%");
        System.out.println(s.distribuicaoPoisson(tempo, k, sigma)+"%");
    }
    
}
