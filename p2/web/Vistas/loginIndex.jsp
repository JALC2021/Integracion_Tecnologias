<%-- 
    Document   : loginIndex
    Created on : 14-mar-2018, 19:57:29
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
            <h1>Rellene el formulario con sus datos</h1>
        </header>
        <div class="container">

            <s:form action="loginIndex" method="post">

                <s:textfield label="nombre" name="nombre" />
                <s:textfield label="apellidos" name="apellidos" />
                <s:password label="password" name="password" />
                <s:textfield label="email" type="email" name="email" />
                <s:textfield label="edad" type="number" name="edad" />
                <s:textfield label="telefono"  name="telefono" />
                <s:textfield label="Comentario" type="textarea" name="comentario" />
                <s:submit value="Aceptar"/>

            </s:form>


        </div>
        <%@include file="footer.jsp" %>
    </body>

</html>
