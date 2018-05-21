/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package p3;

import contraWRST.NewJerseyClient;

/**
 *
 * @author joni
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        NewJerseyClient cliente1 = new NewJerseyClient();
        System.out.println("CONTRASEÑA  CON  5 CARACTERES: "+cliente1.getHtml(String.class, "5"));
        cliente1.close();
        
        NewJerseyClient cliente2 = new NewJerseyClient();
        System.out.println("CONTRASEÑA  CON 10 CARACTERES: "+cliente2.getHtml(String.class, "10"));
        cliente2.close();
    }
    
}
