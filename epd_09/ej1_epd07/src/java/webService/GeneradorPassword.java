/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package webService;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author jalc
 */
@WebService(serviceName = "GeneradorPassword")
public class GeneradorPassword {

    /**
     * This is a sample web service operation
     *Devolvemos una pass conelnumero de cara teres que introduzcamos en la vista.
     *
     */
    
    String construccionPass = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890abcdefghijklmnopqrstuvwxyz";

    @WebMethod(operationName = "generatorPass")
    public String password(@WebParam(name = "pass") int parametroPass) {

        String pass = "";

        for (int i = 0; i < parametroPass; i++) {

            pass += (construccionPass.charAt((int) (Math.random() * construccionPass.length())));

        }

        return pass;
    }
}