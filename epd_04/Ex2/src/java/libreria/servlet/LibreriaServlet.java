package libreria.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import libreria.Almacen;
import libreria.Libro;

public class LibreriaServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException, Exception {

        HttpSession session = request.getSession(false);
        Almacen almacen = new Almacen();
        if (session != null) {

            String accion = request.getParameter("Accion");
            

            if (accion.equals("agregar")) {

                List<String> listaIsbns = (List<String>) session.getAttribute("tienda.carro");
                String isbn = request.getParameter("seleccionLibros");
                Libro libro = null;
                try {
                    
                    libro = almacen.consultaLibro(Integer.parseInt(isbn));
                    if (libro != null) {
                        if (listaIsbns == null) {
                            listaIsbns = new ArrayList<String>(10);
                        }
                        listaIsbns.add(isbn);
                        session.setAttribute("tienda.carro", listaIsbns);
                    } else {
                        PrintWriter out = response.getWriter();
                        out.print("ERROR: Libro con ISBN " + isbn + " no estádisponible.");
                        out.close();
                    }
                } catch (Exception ex) {
                    PrintWriter out = response.getWriter();
                    out.print("ERROR: " + ex.getMessage());
                    out.close();
                }
                //OJO!! debe empezar con '/' para indicar que es relativo al contexto actual
                String url = "/Tienda.jsp";
                ServletContext sc = getServletContext();
                RequestDispatcher rd = sc.getRequestDispatcher(url);
                request.setAttribute("ListaLibros", almacen.consultaLibrosDisponibles());
                request.setAttribute("ListaCompra", almacen.consultaListaLibrosSolicitados(listaIsbns));
                rd.forward(request, response);
            } else if (accion.equals("comprar")) {
                String url = "/Compra.jsp";
                ServletContext sc = getServletContext();
                RequestDispatcher rd = sc.getRequestDispatcher(url);
                request.setAttribute("ListaCompra", almacen.consultaListaLibrosSolicitados((List<String>) session.getAttribute("tienda.carro")));
                rd.forward(request, response);
            }
        }else{
            
                String url = "/Tienda.jsp";
                ServletContext sc = getServletContext();
                RequestDispatcher rd = sc.getRequestDispatcher(url);
                request.setAttribute("ListaLibros", almacen.consultaLibrosDisponibles());
                rd.forward(request, response);
            
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(LibreriaServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(LibreriaServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(LibreriaServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(LibreriaServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public String getServletInfo() {
        return "Short description";
    }
}
