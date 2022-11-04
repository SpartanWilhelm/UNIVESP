package Semana4;

import java.util.*;

public class Teste {
    private final Character[] letters = {'F','C','M'};
    private Character[] lettersCopy;
    private List<Character> list;
    private List<Character> copyList;
    
    //cria uma List e a manipula com métodos de Collections

    public Teste(){
        list = Arrays.asList(letters); //obtem list
        lettersCopy = new Character[3];
        copyList = Arrays.asList(lettersCopy); //visualização de lista de lettersCopy
        System.out.println("initial list: ");
        output(list);
        Collections.reverse(list); //invert a ordem
        System.out.println("\nAfter calling reverse: ");
        output(list);
        Collections.copy(copyList, list); //copia List
        System.out.println("\nAfter copying: ");
        output(copyList);
        Collections.fill(list,'R'); //preenche a lista com Rs
        System.out.println("\nAfter calling fill: ");
        output(list);
    }
    //gera a saída de informações de List
    private void output(List<Character> listRef) {
        System.out.print("The list is: ");
        for(Character element:listRef)
        System.out.printf("%s ", element);
        System.out.printf("\nMax: %s", Collections.max(listRef));
        System.out.printf(" Min: %s\n",Collections.min(listRef));        
    } //fim do método output

    public static void main(String[] args) {
        new Teste();
        
    }
}
