package Semana5;

import java.util.HashSet;
import java.util.Set;

public class Cargos {
    public static void main(String[] args){
        Set<String> cargos = new HashSet<>();
        cargos.add("Gerente");
        cargos.add("Diretor");
        cargos.add("Presidente");
        cargos.add("Secretária");
        cargos.add("Funcionário");
        cargos.add("Diretor");

        System.out.println(cargos);
    }
    
}
