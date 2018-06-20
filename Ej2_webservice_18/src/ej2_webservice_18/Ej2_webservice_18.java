/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ej2_webservice_18;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author jalc
 */
public class Ej2_webservice_18 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here

        String dn1 = "111";
        String dn2 = "222";
        String dn3 = "333";
        String dn4 = "444";

        String dn5 = "555";

        registraRenta(dn1);

        registraRenta(dn2);

        registraRenta(dn3);

        registraRenta(dn4);

        List<String> listaUsuariosRegistrados = new ArrayList<String>();
        listaUsuariosRegistrados = rentaRegistradas();

        for (String usuario : listaUsuariosRegistrados) {
            System.out.println("Registrando DNI" + usuario);
        }
        //comprobar si los dni estan registrados
        System.out.println("Comprobando si dn1 esta registrado: " + rentaYaRegistrada(dn1));
        System.out.println("Comprobando si dn5 esta registrado: " + rentaYaRegistrada(dn5));

        //consultar las rentas de los dni registrados
        System.out.println("Consulta dn1: " + consultarRenta(dn1));
        System.out.println("Consulta dn2: " + consultarRenta(dn2));
        System.out.println("Consulta dn3: " + consultarRenta(dn3));
        System.out.println("Consulta dn4: " + consultarRenta(dn4));
        System.out.println("Consulta dn5: " + consultarRenta(dn5));
        
    }

    private static String consultarRenta(java.lang.String dni) {
        wssoap.ServidorSoap_Service service = new wssoap.ServidorSoap_Service();
        wssoap.ServidorSoap port = service.getServidorSoapPort();
        return port.consultarRenta(dni);
    }

    private static int registraRenta(java.lang.String dni) {
        wssoap.ServidorSoap_Service service = new wssoap.ServidorSoap_Service();
        wssoap.ServidorSoap port = service.getServidorSoapPort();
        return port.registraRenta(dni);
    }

    private static java.util.List<java.lang.String> rentaRegistradas() {
        wssoap.ServidorSoap_Service service = new wssoap.ServidorSoap_Service();
        wssoap.ServidorSoap port = service.getServidorSoapPort();
        return port.rentaRegistradas();
    }

    private static Boolean rentaYaRegistrada(java.lang.String dni) {
        wssoap.ServidorSoap_Service service = new wssoap.ServidorSoap_Service();
        wssoap.ServidorSoap port = service.getServidorSoapPort();
        return port.rentaYaRegistrada(dni);
    }

}
