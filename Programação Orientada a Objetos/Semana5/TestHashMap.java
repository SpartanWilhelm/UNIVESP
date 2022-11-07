package Semana5;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class TestHashMap {
    public static void main(String[] args){
        //declaração do hash Map
        HashMap<Integer, String> hm = new HashMap<Integer, String>();
        //adição dos elementos
        hm.put(1, "UNIVESP");
        hm.put(2, "USP");
        hm.put(7,"UNICAMP");
        hm.put(9, "UNESP");
        hm.put(3, "UFMG");
        //mostrar conteúdo usando o Iterador
        Set set = hm.entrySet();
        Iterator iterator = set.iterator();
        while (iterator.hasNext()){
            Map.Entry mEntry = (Map.Entry) iterator.next();
            System.out.println("A chave é: " + mEntry.getKey() + " e o valor é: " + mEntry.getValue());            
        }
        //obtem os valores baseado na chave
        Integer indice = 2;
        String var = hm.get(indice);
        System.out.println("O valor no indice " + indice + " é: "+ var);

        //remove o valor baseado na chave
        hm.remove(indice);
        System.out.println("Chave e valor do mapa após a remoção do índice "+indice);
        Set set2  =hm.entrySet();
        Iterator iterator2 = set2.iterator();
        while (iterator2.hasNext()){
            Map.Entry mEntry2 = (Map.Entry)iterator2.next();
            System.out.println("A chave é: " + mEntry2.getKey() + " e o valor é: " + mEntry2.getValue());
        }
    }
    
}
