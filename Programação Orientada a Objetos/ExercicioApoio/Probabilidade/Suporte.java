package ExercicioApoio.Probabilidade;

public class Suporte {

    public Integer fatorial(Integer n){
        if (n == 0){
            return 1;
        }if (n == 1){
            return 1;
        }else{
            return n * fatorial(n-1);
        }
    }

    public Integer combinacao(Integer n, Integer k){
        if (k == n || k == 0){
            return 1;
        }else{
            return (fatorial(n))/(fatorial(k)*fatorial(n-k));
        }        
    }

    public Integer arranjo(Integer n, Integer k){
        return (fatorial(n))/fatorial(n-k);
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
        return (((potencia(Math.E, (-sigma*tempo))) * (potencia((double) (sigma * tempo), k))) / fatorial(k));
    }
    public Double distribuicaoGeometrica(Double p, Integer k){
        return potencia((1 - p), (k - 1)) * p;
    }

    public Double distribuicaoHiperGeometrica(Integer K, Integer N, Integer k, Integer n){
        return (double) ((combinacao(K, k) * combinacao((N - K), (n - k))) / combinacao(N, n));
    }

}
