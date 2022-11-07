package Semana5;

import java.util.Enumeration;
import java.util.Hashtable;

public class HashTableExemple {
    public static void main(String [] args){
        Enumeration names;
        String key;
        //cria a tabela hash
        Hashtable<String, String> hashTable = new Hashtable<String, String>();
        //adiciona o par chave/valor
        hashTable.put("Chave1", "UNIVESP");
        hashTable.put("Chave2", "USP");
        hashTable.put("Chave3", "UNICAMP");
        hashTable.put("Chave4", "UNESP");
        hashTable.put("Chave1", "Mona");
        names = hashTable.keys();

        while (names.hasMoreElements()){
            key = (String) names.nextElement();
            System.out.println("Chave: " + key + " e valor " + hashTable.get(key));
        }
    }
    
}
