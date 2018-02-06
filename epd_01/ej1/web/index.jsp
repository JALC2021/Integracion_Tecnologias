<%-- 
    Document   : index
    Created on : 05-feb-2018, 18:51:36
    Author     : jalc
--%>

<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

 <%! Calendar calendar = new GregorianCalendar(); %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ej1</title>
    </head>
    <body>
        <p>EJ1 (30 mins.) Mostrar una salida formateada de la fecha en la que se ejecuta la página JSP junto con un saludo que dependerá de la franja horaria en la que estemos. Dicho saludo será “Buenos días” desde las 5:00 hasta las 11:59, “Buenas tardes” desde las 12:00 hasta las 20:59 y “Buenas noches” desde las 21:00 hasta las 4:59. Por ejemplo, si ejecuta el JSP a las 10:35, la salida será “Buenos días, hoy es 27 de Enero de 2011”. Use la clase Calendar de Java.</p>
       
        
        <%=calendar%>
        

    </body>
</html>
