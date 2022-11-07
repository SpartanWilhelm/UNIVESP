package Semana5;

import java.util.Arrays;
import java.util.SortedSet;
import java.util.TreeSet;


public class SortedSetTest {
    private static final String names[] = {"vermelho", "azul", "branco", "verde", "laranja", "banco", "cinza"};

    //cria um conjunto classificado com TreeSet e depois manipula
    public SortedSetTest(){
        //cria o TreeSet
        SortedSet<String> tree = new TreeSet<String>(Arrays.asList(names));

        System.out.println("sorted set: ");
        printSet(tree); //gera o conteúdo da árvore

        //obtem o Head Set com base em "laranja"
        System.out.print("\nheadSet(\"laranja\"): ");
        printSet(tree.headSet("laranja"));

        //obtem o Tail Set baseado em "laranja"
        System.out.print("tailSet(\"laranja\"):");
        printSet(tree.tailSet("laranja"));

        //obtem primeiro e últimos elementos
        System.out.printf("first: %s\n", tree.first());
        System.out.printf("last: %s\n", tree.last());        
    }
    //gera a saída do conteúdo
    private void printSet(SortedSet<String> set){
        for (String s:set)
        System.out.printf("%s ", s);
        System.out.println();        
    }

    public static void main(String[] args){
        new SortedSetTest();
    }
}
