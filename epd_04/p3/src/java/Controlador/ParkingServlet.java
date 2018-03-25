/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.persistencia.DatosParking;
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

public class ParkingServlet extends HttpServlet {

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
            throws ServletException, IOException, SQLException, Exception {
        HttpSession session = request.getSession(false);
        DatosParking coches = new DatosParking();

        // List<CocheModelo> coches = DatosParking.cochesZonaAzul();
        if (session != null) {
            //Se llama al modelo

            String accion = request.getParameter("accion");

            if (accion.equalsIgnoreCase("consultarAparcamiento")) {

                //session.setAttribute("coches", coches);
                request.setAttribute("coches", coches.cochesZonaAzul());
                String url = "/verListaCoches.jsp";

                ServletContext sc = getServletContext();
                RequestDispatcher rd = sc.getRequestDispatcher(url);
                rd.forward(request, response);

            } else if (accion.equalsIgnoreCase("excedenTiempo")) {
                // String opcion = request.getParameter("excesotiempo");
                String url = "/tiempoExcedido.jsp";

                //List<CocheModelo> cochesExceden = DatosParking.vehiculosExceden(true);
                request.setAttribute("cochesExceden", coches.vehiculosExceden(true));
                ServletContext sc = getServletContext();
                RequestDispatcher rd = sc.getRequestDispatcher(url);
                rd.forward(request, response);

            } else if (accion.equalsIgnoreCase("noExcedenTiempo")) {

                //List<CocheModelo> cochesNoExceden = DatosParking.vehiculosExceden(false);
                request.setAttribute("cochesNoExceden", coches.vehiculosExceden(false));
                String url = "/tiempoNoExcedido.jsp";
                ServletContext sc = getServletContext();
                RequestDispatcher rd = sc.getRequestDispatcher(url);
                rd.forward(request, response);

            } else if (accion.equalsIgnoreCase("buscarMatricula")) {
                //List<CocheModelo> cochesEncontrados = DatosParking.busquedaCoches(request.getParameter("matriculaCoche"));
                // session.setAttribute("buscarMatricula", cochesEncontrados);;
                request.setAttribute("buscarMatricula", coches.busquedaCoches(request.getParameter("matriculaCoche")));
                String url = "/busquedaPorMatricula.jsp";
                ServletContext sc = getServletContext();
                RequestDispatcher rd = sc.getRequestDispatcher(url);
                rd.forward(request, response);

            } else if (accion.equalsIgnoreCase("buscarAparcados")) {
                //List<CocheModelo> cochesAparcados = DatosParking.busquedaCochesAparcados();
                request.setAttribute("buscarCochesAparcados", coches.busquedaCochesAparcados());
                //session.setAttribute("buscarCochesAparcados", cochesAparcados);
                String url = "/cochesAunAparcados.jsp";
                ServletContext sc = getServletContext();
                RequestDispatcher rd = sc.getRequestDispatcher(url);
                rd.forward(request, response);

            }
        } else {
            request.setAttribute("coches", coches.cochesZonaAzul());
            String url = "/index.jsp";
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
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ParkingServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(ParkingServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ParkingServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(ParkingServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
