<%-- 
    Document   : index
    Created on : 12-may-2018, 10:24:16
    Author     : jalc
--%>

<%@page import="java.util.List"%>
<%@page import="entity.pelicula.Pelicula"%>
<%@page import="javax.ws.rs.core.GenericType"%>
<%@page import="dao.NewJerseyClientPelicula"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>P8 epd 8</title>
    </head>
    <body>
        <h1>P8 epd 8</h1>
        <%
            NewJerseyClientPelicula p1 = new NewJerseyClientPelicula();
            //devuelve la lista de la base de datos
            GenericType<List<Pelicula>> l = new GenericType<List<Pelicula>>() {
            };

            List<Pelicula> lpeliculas = p1.findAll_XML(l);
            
            for (Pelicula p : lpeliculas) {

        %><h3><%=p.toString()%></h3>

        <%}

            p1.close();
        %>
    </body>
</html>
