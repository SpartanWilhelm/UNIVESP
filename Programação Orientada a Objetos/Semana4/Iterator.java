package Semana4;

import java.util.*;

public class Iterator {
    public static void main(String[] args){
        List<Integer> myList = new ArrayList<Integer>();
        myList.add(1);
        myList.add(2);
        Iterator iMyList = (Iterator) myList.iterator();

        for(Integer listElements:myList){
            System.out.println(iMyList.next());
        }
    }
    
}
