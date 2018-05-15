<%-- 
    Document   : index
    Created on : 14-may-2018, 19:20:46
    Author     : jalc
--%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="org.apache.jasper.tagplugins.jstl.ForEach"%>
<%@page import="Entity.Pelicula"%>
<%@page import="javax.ws.rs.core.GenericType"%>
<%@page import="java.util.List"%>
<%@page import="Dao.NewJerseyClientPelicula"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%
            NewJerseyClientPelicula p1 = new NewJerseyClientPelicula();
            GenericType<List<Pelicula>> lista = new GenericType<List<Pelicula>>() {
            };
            List<Pelicula> listaPeliculas = p1.findAll_XML(lista);

        %>
        <table border="2">

            <tr>
                <th>Id</th>
                <th>Nombre</th>
                <th>Fecha Estreno</th>
                <th>Fecha Video</th>
                <th>Idioma</th>
                <th>Pais</th>
                <th>
                    <form action="insert.jsp" method="post">

                        <input type="submit" name="insert" value="Insertar Pelicula">

                    </form>
                </th>
            </tr>


            <%  for (Pelicula p : listaPeliculas) {%>

            <tr>
                <td><%= p.getId()%></td>
                <td><%= p.getNombre()%></td>
                <td><%= p.getFechaEstreno()%></td>
                <td><%= p.getFechaVideo()%></td>
                <td><%= p.getIdioma()%></td>
                <td><%= p.getPais()%></td>
                <td>
                    <form method="post" action="#">
                        <input type="submit" name="delete" value="Eliminar Pelicula">
                        <input type="hidden" value="<%= p.getId()%>" name="idDelete">
                    </form>
                </td>
                <td>
                    <form method="post" action="update.jsp">
                        <input type="submit" name="update" value="Actualizar">
                        <input type="hidden" value="<%= p.getId()%>" name="idUpdate">
                    </form>
                </td>
            <tr>
                <%
                    }
                %>
        </table>

        <%
            if (request.getParameter("delete") != null) {
                String id = request.getParameter("idDelete");
                p1.remove(id);
                response.sendRedirect("index.jsp");
            }
        %>
    </body>
</html>
