public class Teste {
    public static void main(String [] args){
        Terrestre[] t = new Terrestre[3];
        t[0] = new Terrestre(5, 4);
        t[1] = new Terrestre(8,6);
        t[2] = new Automovel(5, 4, "Vermelho", 2, "CQO-0090");

        for (int i = 0; i < t.length; i++){
            System.out.println(t[i]);
        }
    }

}
