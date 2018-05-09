/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package p3;

import clienteRest.generatorPasswordJerseyClient;

/**
 *
 * @author jalc
 */
public class P3 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        generatorPasswordJerseyClient usu1 = new generatorPasswordJerseyClient();
        System.out.println("Password 5 caracteres: " + usu1.getHtml(String.class, "5"));
        usu1.close();

        generatorPasswordJerseyClient usu2 = new generatorPasswordJerseyClient();
        System.out.println("Password 10 caracteres: " + usu2.getHtml(String.class, "10"));
        usu1.close();

    }

}
