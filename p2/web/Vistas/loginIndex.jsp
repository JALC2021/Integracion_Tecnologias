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
        <title>Epd_06_p2</title>
    </head>
    <body>

        <h2>Rellene el formulario con sus datos</h2>

    <body>
        <s:form action="loginIndex" method="post">

            <s:textfield key="nombre" name="nombre" />
            <s:textfield key="apellidos" name="apellidos"/>
            <s:password key="password" name="password"/>
            <s:textfield type="email" key="email" name="email"/>
            <s:textfield key="edad" type="number"  name="edad"/>
            <s:textfield key="telefono"  name="telefono" />
            <s:textfield key="Fecha de Nacimiento" type="date" name="fechanacimienti" />
            <s:textfield key="Comentario" type="textarea" name="comentario"/>
            <s:submit value="Aceptar"/>

        </s:form>
    </body>

</html>
