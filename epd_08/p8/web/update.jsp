<%-- 
    Document   : update
    Created on : 14-may-2018, 22:05:50
    Author     : jalc
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="Dao.NewJerseyClientPelicula"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <form name="addADD" method="post">

            Nombre: <input type="text" name="nombre"><br>
            Apellidos: <input type="text" name="apellidos"><br>
            Fecha Alta (yyyy-MM-dd):
            <input type="text" name="anioAlta" size="4" maxlength="4"/>-
            <input type="text" name="mesAlta" size="2" maxlength="2"/>-
            <input type="text" name="diaAlta" size="2" maxlength="2"/><br>

            <input type="submit" name="insertPelicula" value="Insertar Pelicula">
        </form>

        <%
            if (request.getParameter("insertPelicula") != null) {
                //String dni = request.getParameter("dni");
                String nombre = request.getParameter("nombre");
                String fechaEstreno = request.getParameter("apellidos");
                String diaAlta = request.getParameter("diaAlta");
                String mesAlta = request.getParameter("mesAlta");
                String anioAlta = request.getParameter("anioAlta");
                String fecha = anioAlta + "-" + mesAlta + "-" + diaAlta;
                SimpleDateFormat formater = new SimpleDateFormat("yyyy-MM-dd");
                Date fechaAlta;
                fechaAlta = formater.parse(fecha);
                String departamento = request.getParameter("departamento");

                //NewJerseyClientPelicula.(dni, nombre, apellidos, fechaAlta, departamento);
                response.sendRedirect("index.jsp");
            }
        %>

    </body>
</html>
