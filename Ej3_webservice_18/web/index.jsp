<%-- 
    Document   : index
    Created on : 20-jun-2018, 19:40:20
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

        <form action="#" method="post">
            <p>Introduzca Dni: <input type="text" name="dni"/></p>
            <input type="submit" name="registrar" value="Registrar Renta">
            <input type="submit" name="consultar" value="Consultar Renta">
            <input type="submit" name="presentar" value="Presentado?">
        </form>
        <%-- start web service invocation --%>
        <%
            if (request.getParameter("consultar") != null) {

                try {
                    wssoap.ServidorSoap_Service service = new wssoap.ServidorSoap_Service();
                    wssoap.ServidorSoap port = service.getServidorSoapPort();
                    // TODO initialize WS operation arguments here
                    //java.lang.String dni = "";
                    // recojo el campo introducido por el usuario
                    java.lang.String dni = request.getParameter("dni");
                    //esto devuelve el tru o false del metodo
                    boolean registrada = port.rentaYaRegistrada(dni);

                    if (registrada == true) {
                        java.lang.String consulta = port.consultarRenta(dni);
                        out.println("Result = " + consulta);

                    } else {
                        out.println("necesita registrar la renta antes de consultar");
                    }

                } catch (Exception ex) {
                    // TODO handle custom exceptions here
                }
            }
        %>
        <%-- end web service invocation --%>

        <%-- start web service invocation --%>
        <%
            if (request.getParameter("registrar") != null) {

                try {
                    wssoap.ServidorSoap_Service service = new wssoap.ServidorSoap_Service();
                    wssoap.ServidorSoap port = service.getServidorSoapPort();
                    // TODO initialize WS operation arguments here
                    //java.lang.String dni = "";
                    // TODO process result here
                    // recojo el campo introducido por el usuario
                    java.lang.String dni = request.getParameter("dni");
                    //esto devuelve el tru o false del metodo
                    boolean registrada = port.rentaYaRegistrada(dni);

                    if (registrada == true) {

                        out.println("Renta registrada");

                    } else {

                        int cantidad = port.registraRenta(dni);
                        out.println("Cantidad registrada: " + cantidad);
                    }

                    //out.println("Result = " + result);
                } catch (Exception ex) {
                    // TODO handle custom exceptions here
                }
            }
        %>
        <%-- end web service invocation --%>

        <%-- start web service invocation --%>
        <%
            if (request.getParameter("presentar") != null) {
                try {
                    wssoap.ServidorSoap_Service service = new wssoap.ServidorSoap_Service();
                    wssoap.ServidorSoap port = service.getServidorSoapPort();
                    // TODO initialize WS operation arguments here
                    //java.lang.String dni = "";
                    java.lang.String dni = request.getParameter("dni");
                    // TODO process result here
                    //boolean result = port.rentaYaRegistrada(dni);
                    boolean registrada = port.rentaYaRegistrada(dni);

                    if (registrada == true) {

                        out.println("Renta presentada");

                    } else {

                        out.println("Renta no presentada");
                    }
                    //out.println("Result = " + result);
                } catch (Exception ex) {
                    // TODO handle custom exceptions here
                }
            }
        %>
        <%-- end web service invocation --%>


    </body>
</html>