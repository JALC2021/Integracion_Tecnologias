<%-- 
    Document   : jsp
    Created on : 23-may-2018, 19:48:12
    Author     : jalc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Introduce una fecha en fomato "dd-mm-yyyy": </h1>
        <form action="newjsp.jsp" method="get">
            <label for="fecha">Fecha: </label><input name="fecha" id="fecha" type="text" />
            <input type="submit" value="Obtener la fecha" />
        </form>
        <h1>Comprueba tu fecha: </h1>
        <form action="newjsp.jsp" method="get">
            <label for="comprobarFecha">Fecha: </label><input  name="comprobarFecha" id="comprobarFecha" type="text" />
            <label for="comprobarDia">Dia:  </label><input name="comprobarDia" id="comprobarDia" type="text" />
            <input type="submit" value="Comprobar fecha" />
        </form>
    </body>

    <%-- start web service invocation --%><hr/>
    <%
        try {
            servidorwebservicesoap.CalcularFecha_Service service = new servidorwebservicesoap.CalcularFecha_Service();
            servidorwebservicesoap.CalcularFecha port = service.getCalcularFechaPort();
            // TODO initialize WS operation arguments here
            java.lang.String fecha = request.getParameter("fecha");
            // TODO process result here
            java.lang.String result = port.comprobarFecha(fecha);
            out.println("Result = " + result);
        } catch (Exception ex) {
            // TODO handle custom exceptions here
        }
    %>
    <%-- end web service invocation --%><hr/>
    <%-- start web service invocation --%><hr/>
    <%
        try {
            servidorwebservicesoap.CalcularFecha_Service service = new servidorwebservicesoap.CalcularFecha_Service();
            servidorwebservicesoap.CalcularFecha port = service.getCalcularFechaPort();
            // TODO initialize WS operation arguments here
            java.lang.String fecha = request.getParameter("comprobarFecha");
            java.lang.String dia = request.getParameter("comprobarDia");
            // TODO process result here
            java.lang.Boolean result = port.comprobarFechayDia(fecha, dia);
            out.println("Result = " + result);
        } catch (Exception ex) {
            // TODO handle custom exceptions here
        }
    %>
    <%-- end web service invocation --%><hr/>

</html>
