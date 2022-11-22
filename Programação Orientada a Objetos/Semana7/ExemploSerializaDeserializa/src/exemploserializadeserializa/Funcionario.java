/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package exemploserializadeserializa;

/**
 *
 * @author julio
 */
    public class Funcionario implements java.io.Serializable {
        public String nome;
        public String endereco;
        public transient int id;
        public int numero;
        public void verificaEmail() {
            System.out.println("Checagem para: " + nome + " " + endereco);
        }
    }