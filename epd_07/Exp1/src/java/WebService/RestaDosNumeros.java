/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package WebService;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author jalc
 */
@WebService(serviceName = "RestaDosNumeros")
public class RestaDosNumeros {

    /**
     * This is a sample web service operation
     */
    @WebMethod(operationName = "hello")
    public String hello(@WebParam(name = "name") String txt) {
        return "Hello " + txt + " !";
    }

    @WebMethod(operationName = "resta")
    public int Restar(@WebParam(name = "num1") int n1, @WebParam(name = "num2") int n2) {

        int res = n1 - n2;

        return res;

    }

}
