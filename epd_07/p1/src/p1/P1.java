/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package p1;


/**
 *
 * @author jalc
 */
public class P1 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        System.out.println("Password 15 caracteres: " + generatorPass(15));
        System.out.println("Password 20 caracteres: " + generatorPass(20));
    }

    private static String generatorPass(int pass) {
        webservice.GeneradorPassword_Service service = new webservice.GeneradorPassword_Service();
        webservice.GeneradorPassword port = service.getGeneradorPasswordPort();
        return port.generatorPass(pass);
    }


}
