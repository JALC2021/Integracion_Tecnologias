

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

            <label>Dni <strong><s:property value="dni" /></strong></label><br />
            <label>Nombre: <strong><s:property value="nombre" /></strong></label><br /> 
            <label>Apellidos: <strong><s:property value="apellidos" /></strong></label><br />
            <label>Password: <strong><s:property value="password" /></strong></label><br />
            <label>Email: <strong><s:property value="email" /></strong></label><br />
            <label>Edad: <strong><s:property value="edad" /></strong></label><br />
            <label>Telefono: <strong><s:property value="telefono" /></strong></label><br />
            <label>Comentario: <strong><s:property value="comentario" /></strong></label><br />
            <label>Condiciones: <strong><s:property value="condiciones" /></strong></label><br />

        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>
