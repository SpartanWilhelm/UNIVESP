package Semana4;

public class ParTeste {
    public static <K,V>boolean compare(Par<K,V> p1, Par<K,V> p2){
        return p1.getKey().equals(p2.getKey()) && p1.getValue().equals(p2.getValue());
    }

    Par<Integer, String> p1 = new ParOrdenado(1, "Laranja");
    Par<Integer, String> p2 = new ParOrdenado<Integer,String>(2, "uva");
    boolean x = ParTeste.compare(p1,p2);
    
}
