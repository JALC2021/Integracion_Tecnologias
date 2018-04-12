<%-- 
    Document   : welcome
    Created on : 14-mar-2018, 19:56:58
    Author     : jalc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../style.css">
        <title>Epd_06_p2</title>
    </head>
    <body>
        <header>
            <h1>CORRECTO</h1>
        </header>

        <div class="container">

            <label>Nombre: <strong><s:property value="nombre" /></strong> <br /></label>  
            <label>Apellidos: <strong><s:property value="apellidos" /></strong> <br /></label>
            <label>Password: <strong><s:property value="password" /></strong> <br /></label>
            <label>Email: <strong><s:property value="email" /></strong> <br /></label>
            <label>Edad: <strong><s:property value="edad" /></strong> <br /></label>
            <label>Telefono: <strong><s:property value="telefono" /></strong><br /></label>
            <label>Comentario: <strong><s:property value="comentario" /></strong> <br /></label>

        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>
