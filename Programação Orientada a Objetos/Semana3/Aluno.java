package Semana3;

import java.util.Date;

public class Aluno extends Pessoa {
    public Aluno(String _nome, String _cpf, Date _data){
        super(_nome, _cpf, _data);
    }
    public String matricula;
}
