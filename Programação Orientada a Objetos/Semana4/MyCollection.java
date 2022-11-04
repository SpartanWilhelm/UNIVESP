package Semana4;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class MyCollection {
    public static void main(String[] args) {

        //sem iterador
        List<Integer> myList = new ArrayList<Integer>();
        myList.add(1);
        myList.add(2);
        myList.add(2);

        for(Integer listElements:myList){
            System.out.println(listElements);
        }

        //com iterador
        Set<Integer> mySet = new HashSet<Integer>();
        mySet.add(1);
        mySet.add(2);
        mySet.add(3);
        mySet.add(1);
        Iterator<Integer> iMySet = mySet.iterator();
        while(iMySet.hasNext()){
            System.out.println(iMySet.next());
        }
    }
    
}
