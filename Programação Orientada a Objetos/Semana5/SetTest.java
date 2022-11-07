package Semana5;

import java.util.*;

public class SetTest {
    private static final String colors[] = {"vermelho", "azul", "branco", "verde", "laranja", "banco", "cinza"};

    //cria o conjunto de array para eliminar duplicadas
    private void printNonDuplicates(Collection<String> collection){
        //cria um hashset
        Set<String> set = new HashSet<String>(collection);

        System.out.println("\nNonduplicates are: ");

        for(String s:set)
        System.out.printf("%s ", s);
        System.out.println();
    }
    public SetTest(){
        List<String> list = Arrays.asList(colors);
        System.out.printf("ArrayList: %s\n", list);
        printNonDuplicates(list);
    }
    public static void main(String[] args){
        new SetTest();        
    }
    
}
