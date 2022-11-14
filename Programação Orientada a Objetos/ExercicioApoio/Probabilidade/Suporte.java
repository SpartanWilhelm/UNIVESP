package ExercicioApoio.Probabilidade;

public class Suporte {
    private Integer x;
    private Integer n;
    private Integer k;

    public Integer fatorial(Integer n){
        if (n == 0){
            return 1;
        }if (n == 1){
            return 1;
        }else{
            return n * fatorial(n-1);
        }
    }

    public Double combinacao(Integer n, Integer k){
        if (k == n || k == 0){
            return (double) 1;
        }else{
            return (double) (fatorial(n))/(fatorial(k)*fatorial(n-k));
        }        
    }

    public Double arranjo(Integer n, Integer k){
        return (double) (fatorial(n))/fatorial(n-k);
    }

    public Double potencia(Double x, Integer y){
        if (y == 0){
            return (double) 1;
        }else{
            return Math.pow(x,y);
        }        
    }

    public Double distribuicaoBinomial(Integer n, Double p, Integer k){
        return combinacao(n, k) * potencia(p, k) * potencia((1-p), (n-k));
    }
    
    public Double distribuicaoPoisson(Integer tempo, Integer k, Integer sigma){
        return (((potencia(Math.E, (-sigma*tempo))) * (potencia((double) (sigma * tempo), k))) / fatorial(k)) * 100;
    }

}
