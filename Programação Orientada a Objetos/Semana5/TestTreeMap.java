package Semana5;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

public class TestTreeMap {
    public static void main(String[] args) {
        //declaração da Tree Map
        TreeMap<Integer, String> tmap;
        tmap = new TreeMap<Integer, String>();
        //adiciona elementos
        tmap.put(1, "UNIVESP");
        tmap.put(7, "USP");
        tmap.put(6, "UNICAMP");
        tmap.put(4,"UNESP");
        tmap.put(5, "UFMG");

        //mostra o conteúdo usando o Iterator
        Set set = tmap.entrySet();
        Iterator iterator = set.iterator();
        while (iterator.hasNext()){
            Map.Entry mEntry = (Map.Entry)iterator.next();
            System.out.println("A chave é: " + mEntry.getKey() + " e o valor é: " + mEntry.getValue());
        }
    }
    
}
