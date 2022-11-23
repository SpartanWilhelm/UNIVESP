/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package exemplostream3;

import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;

/**
 *
 * @author julio
 */
public class ExemploStream3 { 
    public static void main( 
        String[] args) throws Exception 
    { 
  
        // Cria byteArrayOutputStream 
        ByteArrayOutputStream byteArrayOutStr 
            = new ByteArrayOutputStream(); 
  
        // Converte byteArrayOutputStream para bufferedOutputStream 
        BufferedOutputStream buffOutputStr 
            = new BufferedOutputStream( 
                byteArrayOutStr); 
  
        for (int i = 65; i < 91; i++) { 
            // Escreve para buffOutputStr 
            buffOutputStr.write(i); 
        } 
  
        buffOutputStr.flush(); 
  
        for ( 
            byte by : byteArrayOutStr.toByteArray()) { 
            // Converte byte para character 
            char ch = (char)by; 
            System.out.print(ch); 
        } 
    } 
} 