/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package wsSoap;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import modelo.Usuario;

/**
 *
 * @author jalc
 */
@WebService(serviceName = "servidorSoap")
public class servidorSoap {

    /**
     * This is a sample web service operation
     */
    List<Usuario> listaUsuarios = new ArrayList<Usuario>();

    public static int numAl() {
        Random rand = new Random();
        int max = 10;
        int min = -10;
        int randomNum = rand.nextInt((max - min) + 1) + min;
        return randomNum;
    }

    @WebMethod(operationName = "registraRenta")
    public int registraRenta(@WebParam(name = "dni") String dni) {

        int cantidadAleatoria = numAl();
        Usuario usuario = new Usuario(dni, cantidadAleatoria);
        listaUsuarios.add(usuario);

        return cantidadAleatoria;
    }

    @WebMethod(operationName = "consultarRenta")
    public String consultarRenta(@WebParam(name = "dni") String dni) {

        String mensaje = "";

        for (Usuario usuario : listaUsuarios) {

            if (usuario.getDni().equalsIgnoreCase(dni)) {

                if (usuario.getCantidad() < 0) {
                    mensaje = "A devolver " + usuario.getCantidad();
                } else if (usuario.getCantidad() > 0) {
                    mensaje = "A pagar " + usuario.getCantidad();
                } else {
                    mensaje = "No tiene que presentarla " + usuario.getCantidad();
                }
            }
        }

        return mensaje;
    }

    @WebMethod(operationName = "rentaYaRegistrada")
    public boolean rentaYaRegistrada(@WebParam(name = "dni") String dni) {

        boolean encontrado = false;
        for (Usuario usuario : listaUsuarios) {
            if (usuario.getDni().equalsIgnoreCase(dni)) {
                encontrado = true;
            }
        }

        return encontrado;

    }

    @WebMethod(operationName = "rentaRegistradas")
    public List<String> rentaRegistradas() {

        List<String> listaUsuariosRegistrados = new ArrayList<String>();
        String usuario = "";
        for (Usuario usuariosRegistrados : listaUsuarios) {

            usuario = usuariosRegistrados.getDni() + " " + usuariosRegistrados.getCantidad();
            listaUsuariosRegistrados.add(usuario);
        }
        return listaUsuariosRegistrados;
    }
}
