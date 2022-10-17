package Semana1;
import java.util.Scanner;

public class ConverterTest {
    public static void main(String[] args){
        Scanner leitor = new Scanner(System.in);
        Converter conversor = new Converter();
        double temperatura = 0;
        double resultado = 0;
        String escala;

        System.out.println("Conversor de temperatura");
        System.out.println("Digite a temperatura: ");
        temperatura = Double.parseDouble(leitor.nextLine());
        System.out.println("Digite a escala (c) para celsius ou (f) para fahrenheit: ");
        escala = leitor.nextLine();

        if (escala.equals("c")) {
            resultado = conversor.cToF(temperatura);
            escala = "fahrenheit";
        }else{
            resultado = conversor.fToC(temperatura);
            escala = "celsius";
        }
        System.out.printf("%.1f" + "º " + escala, resultado);
    }
    
}
