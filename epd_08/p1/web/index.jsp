<%@page import="ClienteREST.ContadorJerseyClient"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>p1_epd8</title>
    </head>
    <body>
        <%
            if (request.getParameter("palabra") != null) {
                ContadorJerseyClient cliente = new ContadorJerseyClient();
                String palabra = request.getParameter("palabra");
                String tamanio = cliente.getHtml(String.class, palabra);
                cliente.close();
        %>
        <h1><%= tamanio%></h1>
        <%  } else { %>

 
        <h1>Contador car&aacute;cteres</h1>
        <h2>Introduzca una palabra</h2>
        <form action="#">
            <input type="text" name="palabra"/>
            <input type="submit" name="enviar" value="Enviar"/>
        </form>
        <% }%>
        
    </body>
</html>
