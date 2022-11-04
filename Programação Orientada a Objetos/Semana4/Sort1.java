package Semana4;

import java.util.*;

public class Sort1 {
    private static final String suits[]={"Hearts","Diamonds","Clubs","Spades"};
    //exibe elemntos do array
    public void printElements(){
        List<String> list = Arrays.asList(suits);
        System.out.printf("Unsorted arrays elements:\n%s\n", list);
        Collections.sort(list); //classifica a array list
        //gera a saída da lista
        System.out.printf("Sorted array elements:\n%s\n", list);        
    } //fim do método print elements

    public static void main(String[] args) {
        Sort1 sort1 = new Sort1();
        sort1.printElements();
    }
    
}
