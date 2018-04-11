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
        <title>Formulario</title>
    </head>
    <body>
        <s:form action="loginIndex">
            <s:textfield name="nombre" key="Nombre" />
            <s:textfield name="username" key="Username" />
            <s:password name="password" key="Password" />
            <s:textfield name="edad" key="Edad" />
            <s:textfield name="fechaNacimiento" key="Fecha de Nacimiento" />
            <s:submit value="Enviar" />
        </s:form>
    </body>
</html>
