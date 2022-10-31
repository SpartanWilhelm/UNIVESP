package Semana4;

public class ParOrdenado<K,V> implements Par<K,V> {
    private K key;
    private V value;

    public ParOrdenado(K key, V value){
        this.key = key;
        this.value = value;
    }
    public K getKey(){
        return key;
    }
    public V getValue(){
        return value;
    }
    
}
