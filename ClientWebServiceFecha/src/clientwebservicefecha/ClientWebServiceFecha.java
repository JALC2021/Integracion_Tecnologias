/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clientwebservicefecha;

import servidorwebservicesoap.ParseException_Exception;

/**
 *
 * @author jalc
 */
public class ClientWebServiceFecha {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws ParseException_Exception {
        // TODO code application logic here

        String fecha = "24-05-2018";
        String dia = "jueves";
        System.out.println("fecha y dia: " + comprobarFechayDia(fecha, dia));
        System.out.println(fecha + " " + dia);

    }

    private static Boolean comprobarFechayDia(java.lang.String fecha, java.lang.String dia) throws ParseException_Exception {
        servidorwebservicesoap.CalcularFecha_Service service = new servidorwebservicesoap.CalcularFecha_Service();
        servidorwebservicesoap.CalcularFecha port = service.getCalcularFechaPort();
        return port.comprobarFechayDia(fecha, dia);
    }

}
