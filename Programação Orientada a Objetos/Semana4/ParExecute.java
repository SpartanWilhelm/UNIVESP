package Semana4;

public class ParExecute {

    public static void main(String[] args){
        

    Par<Integer, String> p1 = new ParOrdenado(1, "laranja");
    Par<Integer, String> p2 = new ParOrdenado<Integer,String>(2, "uva");
    boolean x = ParTeste.compare(p1, p2);
    System.out.println(x);
    }
    
}
