<%-- 
    Document   : index
    Created on : 30-abr-2018, 11:44:57
    Author     : jalc
--%>

<%@page import="webservice.GeneradorPassword_Service"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="index.jsp">
            Introduzca el numero de caracteres que desea para su contraseña: <input name="numero" type="number" min="0">
            <input type="submit" value="Generar">
        </form>

        <%-- start web service invocation --%><hr/>
        <%
            try {
                webservice.GeneradorPassword_Service service = new webservice.GeneradorPassword_Service();
                webservice.GeneradorPassword port = service.getGeneradorPasswordPort();
                // TODO initialize WS operation arguments here
                int pass = 0;
                // TODO process result here
                java.lang.String result = port.generatorPass(Integer.parseInt(request.getParameter("numero")));

                out.println("Result = " + result);
            } catch (Exception ex) {
                // TODO handle custom exceptions here
            }
        %>
        <%-- end web service invocation --%><hr/>
    </body>
</html>
