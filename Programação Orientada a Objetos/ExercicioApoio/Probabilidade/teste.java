package ExercicioApoio.Probabilidade;

import java.util.Scanner;

public class teste {
    public static void main(String[] args){
        Suporte s = new Suporte();
        Scanner leitor = new Scanner(System.in);
        Integer x = 1;
        Integer n = 0; //quantidade de experimentos
        Integer k = 0; //quantidade de sucessos
        Integer sigma = 0; // taxa média de eventos
        Integer unidade = 0;
        Double valorEsperado = 0.0;

        while (x != 0){
            System.out.println("Escolha a distribuição desejada:\n");
            System.out.println("1 - Combinação");
            System.out.println("2 - Arranjo");
            System.out.println("3 - Binomial");
            System.out.println("4 - Poisson");
            System.out.println("5 - Geométrica");
            System.out.println("6 - Hipergeométrica");
            System.out.println("0 - Sair");
            x = leitor.nextInt();
            if (x == 1){
                System.out.println("Digite o total de experimentos");
                n = leitor.nextInt();
                System.out.println("Digite a quantidade de sucessos desejados");
                k = leitor.nextInt();
                System.out.println("O resultado da combinação entre " + n + " e " + k + " é "+s.combinacao(n, k));
            }
            if (x == 2){
                System.out.println("Digite o total de experimentos");
                n = leitor.nextInt();
                System.out.println("Digite a quantidade de sucessos desejados");
                k = leitor.nextInt();
                System.out.println("O resultado do arranjo entre " + n + " e " + k + " é "+s.arranjo(n, k));
            }
            if (x == 3){
                System.out.println("Digite o total de experimentos");
                n = leitor.nextInt();
                System.out.println("Digite a quantidade de sucessos desejados");
                k = leitor.nextInt();
                System.out.println("Digite o valor esperado para o ensaio (Entre 0 e 1):");
                valorEsperado = leitor.nextDouble();
                System.out.println("A probabilidade de obter " + k + " em " + n + " experimentos é "+s.distribuicaoBinomial(n, valorEsperado, k)*100 + " %");
            }
            if (x == 4){                
                System.out.println("Digite o a quantidade de ocorrências");
                k = leitor.nextInt();
                System.out.println("Digite a unidade (quantidade de tempo, espaço, etc)");
                unidade = leitor.nextInt();
                System.out.println("Digite a taxa média de eventos por unidade");
                sigma = leitor.nextInt();
                System.out.println("A probabilidade de obter " + k + " eventos em " + unidade + " unidades é "+s.distribuicaoPoisson(unidade, k, sigma)*100 + " %");
            }
            if (x == 5){
                System.out.println("Digite a probabilidade de sucesso (entre 0 e 1)");
                valorEsperado = leitor.nextDouble();
                System.out.println("Digite a quantidade de experimentos");
                k = leitor.nextInt();
                System.out.println("A probabilidade de realizar "+ k +" experimentos até obter sucesso é " + s.distribuicaoGeometrica(valorEsperado, k)*100 + " %");
            }
            if (x == 6){
                System.out.println("Digite a população total");
                Integer N = leitor.nextInt();
                System.out.println("Digite a quantidade de eventos na população total");
                Integer K = leitor.nextInt();
                System.out.println("Digite a população do experimento");
                n = leitor.nextInt();
                System.out.println("Digite a quantidade de eventos desejados na amostra");
                k = leitor.nextInt();
                System.out.println("A probabilidade de encontrar " + k + " eventos em " + n + " é de " + s.distribuicaoHiperGeometrica(K, N, k, n));
            }
        }
        Integer n = 200;
        Integer k = 140;
        Integer sigma = 65;
        Integer tempo = 2;

        //System.out.println(s.combinacao(n,k));
        System.out.println(s.distribuicaoBinomial(n, 65.0, k)*100 + "%");
        System.out.println(s.distribuicaoPoisson(tempo, k, sigma)+"%");
>>>>>>> b19a552a6e32412649be97f081e8b3ce6503471c
    }
    
}
