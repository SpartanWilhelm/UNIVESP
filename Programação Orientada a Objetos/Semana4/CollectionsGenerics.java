package Semana4;

import java.util.ArrayList;
import java.util.List;

public class CollectionsGenerics {
    public static void main(String[] args){
        List<Integer> myList = new ArrayList<Integer>();
        myList.add(1);
        myList.add(2);

        for(Integer listElements:myList){
            System.out.println(listElements);
        }
    }
    
}
