/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package exemplostream2;

/**
 *
 * @author julio
 */
// Ilustra a utilização do método BufferedInputStream read()

import java.io.*; 

public class ExemploStream2 { 
	public static void main(String[] args) 
		throws Exception 
	{ 

		// Cria um inputstream para ler o conteúdo do arquivo
		FileInputStream inputStream 
			= new FileInputStream("D:\\UNIVESP\\UNIVESP\\UNIVESP\\Programação Orientada a Objetos\\Semana7\\entrada.txt"); 

		// Converte inputStream para bufferedInputStream 
		BufferedInputStream buffInputStr 
			= new BufferedInputStream( 
				inputStream); 

		// Leia até que um byte esteja disponível 
		while (buffInputStr.available() > 0) { 

			// Lê o byte e converte o inteiro para caracter
			char c = (char)buffInputStr.read(); 

			// Imprime os caracteres
			System.out.println("Caractere : " + c); 
		} 
	} 
} 

