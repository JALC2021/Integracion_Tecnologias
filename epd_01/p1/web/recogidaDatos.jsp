<%-- 
    Document   : recogidaDatos
    Created on : 13-feb-2018, 19:05:19
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
        <%= request.getParameter("nombre") %>
        <%= request.getParameter("apellidos") %>
        <%= request.getParameter("email") %>
    </body>
</html>
