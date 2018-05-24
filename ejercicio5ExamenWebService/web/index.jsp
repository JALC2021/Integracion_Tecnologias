<%-- 
    Document   : jsp
    Created on : 23-may-2018, 20:54:23
    Author     : jalc
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@page import="Dao.Games"%>
<%@page import="javax.ws.rs.core.GenericType"%>
<%@page import="Dao.NewJerseyClientGames"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (request.getParameter("insertJuego") != null) {
        //CHULETAAAAAAA
        Integer id = 0;
        String name = request.getParameter("nombre");
        String console = request.getParameter("consola");
        String fecha = request.getParameter("fecha");
        Date year = java.sql.Date.valueOf(fecha);
        //Date year = new Date("2000-12-12");
        NewJerseyClientGames jibsert = new NewJerseyClientGames();
        Games j = new Games(id, name, console, year);
        jibsert.create_XML(j);
        response.sendRedirect("index.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            //CHULETAAAAAAAAA
            NewJerseyClientGames g1 = new NewJerseyClientGames();
            GenericType<List<Games>> games = new GenericType<List< Games>>() {
            };

            List<Games> listaGames = g1.findAll_XML(games);
        %>
        <table border="2">

            <tr>
                <th>Id</th>
                <th>Nombre</th>
                <th>Consola</th>
                <th>Fecha</th>
                <th>
                    <form action="#" method="post">

                        <input type="submit" name="insertar" value="Insertar juego">

                    </form>
                </th>
            </tr>
            <%
                for (Games g : listaGames) {
                    SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
                    Date year = g.getYear();
                    String yearF = format.format(year);

            %>
            <tr>
                <td><%=g.getId()%></td>
                <td><%=g.getName()%></td>
                <td><%=g.getConsole()%></td>
                <td><%=yearF%></td>
                <td>
                    <form method="post" action="#">
                        <input type="submit" name="delete" value="Eliminar juego">
                        <input type="hidden" value="<%= g.getId()%>" name="idDelete">
                    </form>
                </td>
                <td>
                    <form method="post" action="edit.jsp">
                        <input type="submit" name="edit" value="Editar juego">
                        <input type="hidden" value="<%= g.getId()%>" name="idEdit">
                    </form>
                </td>

            </tr>
            <%
                }
            %>
        </table>
        <%
            //delete
            if (request.getParameter("delete") != null) {
                String id = request.getParameter("idDelete");
                g1.remove(id);
                response.sendRedirect("index.jsp");

            }

            //formulario insert
            if (request.getParameter("insertar") != null) {
        %>
        <h1>Insertar Juegos</h1>
        <form method="post" action="#">
            Nombre: <input type="text" name="nombre"><br>
            Consola: <input type="text" name="consola"><br>
            Fecha: <input type="date" name="fecha" required><br>

            <input type="submit" name="insertJuego" value="Insertar juego">
        </form>


        <%}%>



    </body>
</html>
