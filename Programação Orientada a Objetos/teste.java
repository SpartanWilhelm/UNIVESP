import java.util.*;

public class teste{
    public static void main(String[] args){
        System.out.println("Hello World!");
        Set<String> nomes = new HashSet<>();
        nomes.add("João");
        nomes.add("José");
        nomes.add("Maria");
        nomes.add("Carlos");
        nomes.add("Maria");
        nomes.add("João");
        System.out.println(nomes);

        HashSet<String> dset = new HashSet<String>();

        dset.add("Zoraide");

        dset.add("Maria");

        dset.add("Janete");

        dset.add("João");

        dset.add("Heitor");



        Iterator<String> iterator = dset.iterator();



        while (iterator.hasNext()) {

            System.out.print(iterator.next() + " ");

        }
        System.out.println();

        TreeSet<String> dset2 = new TreeSet<String>();

        dset2.add("Zoraide");

        dset2.add("Maria");

        dset2.add("Janete");

        dset2.add("João");

        dset2.add("Heitor");

        Iterator<String> iterator2 = dset2.iterator();

        while (iterator2.hasNext()) {

            System.out.print(iterator2.next() + " ");

        }
    }
}