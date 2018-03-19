<%-- 
    Document   : newjsp
    Created on : 17-mar-2018, 23:06:19
    Author     : jalc
--%>

<%@page import="Controlador.ParkingServlet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
         <form action="ParkingServlet" method="post">
                <input type="hidden" name="accion" value="consultar">
                <input type="submit" name="consultar" value="Iniciar">
            </form>
     
    </body>
</html>
