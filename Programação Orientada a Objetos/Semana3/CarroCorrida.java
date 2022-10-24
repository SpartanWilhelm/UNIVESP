package Semana3;

public class CarroCorrida extends Carro {
    public CarroCorrida(int velocidadeInicial){
        super(velocidadeInicial);
    }
    public void acelera(){
        velocidade += 5;
    }
}
