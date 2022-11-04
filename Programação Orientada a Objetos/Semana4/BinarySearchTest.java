package Semana4;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class BinarySearchTest {
    private static final String colors[] = {"red","white", "blue","black","yellow","purple","tan","pink"};
    private List<String> list; //referencia ArrayList
    //cria, classifica e gera saída
    public BinarySearchTest(){
        list = new ArrayList<String>(Arrays.asList(colors));
        Collections.sort(list); //classifica a Array List
        System.out.printf("Sorted ArrayList: %s\n", list);        
    }//fim do construtor BinarySearchTest
    //pesquisa vários valores na lista
    private void search(){
        printSearchResults(colors[3]); //primeiro item
        printSearchResults(colors[0]); //item intermediário
        printSearchResults(colors[7]); //último item
        printSearchResults("aqua"); //abaixo do mais baixo
        printSearchResults("gray"); //não existe
        printSearchResults("teal"); //não existe
    }//fim do método search
    private void printSearchResults(String key) {
        int result = 0;
        System.out.printf("\nSearching for: %s\n", key);
        result = Collections.binarySearch(list, key);
        if(result>=0){
            System.out.printf("Found at index %d\n", result);
        }else{
            System.out.printf("Not Found (%d)\n", result);
        }//fim do método printSearchResults
    }

    public static void main(String [] args) {
        BinarySearchTest bst = new BinarySearchTest();
        bst.search();
        
    }
}
