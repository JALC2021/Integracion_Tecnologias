/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.Bebe;
import modelo.Usuario;
import persistencia.CrudBBDD;

/**
 *
 * @author jalc
 */
public class Controlador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.sql.SQLException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {

        //creamos una session con HttpSession y la recogemos con el request a falso
        HttpSession session = request.getSession(false);
        //redirecciono donde le diga
        String url = "/vistas/index.jsp";
        //creamos nuestro crudBBDD
        CrudBBDD bbdd = new CrudBBDD();
        //donde el campo name sea igual a accion
        String accion = request.getParameter("accion");

        if (session != null) {

            if (accion != null) {

                //comprobamos que el campo value del action sea el mismo
                //pasamos a la vista del login
                if (accion.equalsIgnoreCase("login")) {
                    url = "/vistas/login.jsp";

                    //comprobamos el usuario y contraseña del login
                } else if (accion.equalsIgnoreCase("registro")) {
                    //recojo los datos del formulario
                    String usuario = request.getParameter("usuario");
                    String password = request.getParameter("password");
                    //llamamos al metodo que comprueba usario y password
                    Usuario usuarioBBDD = bbdd.compruebaUsuario(usuario, password);

                    if (usuarioBBDD == null) {
                        //muestra un mensaje de error en las credenciales
                        String mensaje = "usuario o contraseña no existe";
                        //en la vista donde queramos mostrar este mensaje lo recogeremos con el getAttribute
                        request.setAttribute("mensaje", mensaje);
                        //redirecciono donde le diga
                        url = "/vistas/login.jsp";

                    } else {
                        //variable de session, almaceno el nombre de usuario
                        session.setAttribute("usuario", usuario);
                        //muestra y refresca la lista, el primer parametro le pongo el nombre que yo quiera
                        //request.setAttribute("listaBebesBBDD", bbdd.ListaBebes());
                        //redirecciono donde le diga
                        url = "/vistas/index.jsp";

                    }

                } else if (accion.equalsIgnoreCase("Deslogar")) {
                    //elimino variable de session al pulsar deslogar.
                    session.invalidate();
                    //muestra y refresca la lista, el primer parametro le pongo el nombre que yo quiera
                    //request.setAttribute("listaBebesBBDD", bbdd.ListaBebes());
                    //redirecciono donde le diga
                    url = "/vistas/index.jsp";

                } else if (accion.equalsIgnoreCase("bebesIncubadora")) {

                    //redirecciono donde le diga
                    url = "/vistas/index.jsp";
                    //muestra y refresca la lista, el primer parametro le pongo el nombre que yo quiera
                    request.setAttribute("bebesIncubadora", bbdd.sigueIncubadora());

                } else if (accion.equalsIgnoreCase("formAlta")) {

                    url = "/vistas/add.jsp";

                } else if (accion.equalsIgnoreCase("altaBebe")) {

                    String dni = request.getParameter("dni");
                    String nombrePadre = request.getParameter("nombrePadre");
                    String nombreMadre = request.getParameter("nombreMadre");
                    String horaNacimiento = request.getParameter("horaNacimiento");
                    String minutosNacimiento = request.getParameter("minNacimiento");
                    String horaIncubadora = request.getParameter("horaIncubadora");
                    String minutosIncubadora = request.getParameter("minIncubadora");
                    String nacimiento = horaNacimiento + ":" + minutosNacimiento;
                    String incubadora = "";
                    if (horaIncubadora.isEmpty() || minutosIncubadora.isEmpty()) {
                        incubadora = null;
                    } else {
                        incubadora = horaIncubadora + ":" + minutosIncubadora;
                    }
                    Bebe b = new Bebe(dni, nombrePadre, nombreMadre, nacimiento, incubadora);
                    bbdd.addBebe(b);

                    //request.setAttribute("listaBebesBBDD", bbdd.ListaBebes());
                    //redirecciono donde le diga
                    url = "/vistas/index.jsp";

                } else if (accion.equalsIgnoreCase("cancelarAlta")) {

                    url = "/vistas/index.jsp";

                } else if (accion.equalsIgnoreCase("borrar")) {

                    String dni = request.getParameter("dni");
                    bbdd.deleteBebe(dni);
                    //request.setAttribute("listaBebesBBDD", bbdd.ListaBebes());
                    //redirecciono donde le diga
                    url = "/vistas/index.jsp";

                }

            }

            //muestra y refresca la lista, el primer parametro le pongo el nombre que yo quiera
            request.setAttribute("listaBebesBBDD", bbdd.ListaBebes());
            //estas tres lineas siempre son asi
            ServletContext sc = getServletContext();
            RequestDispatcher rd = sc.getRequestDispatcher(url);
            rd.forward(request, response);

        } else {

            //muestra y refresca la lista, el primer parametro le pongo el nombre que yo quiera
            request.setAttribute("listaBebesBBDD", bbdd.ListaBebes());
            //estas tres lineas siempre son asi
            ServletContext sc = getServletContext();
            RequestDispatcher rd = sc.getRequestDispatcher(url);
            rd.forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Controlador.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Controlador.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
