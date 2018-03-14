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
        <title>loginIndex</title>
    </head>
    <body>
        <s:form action="accionLogin">
            <s:textfield name="username" label="Nombre"></s:textfield>
            <s:password name="password" label="Contraseña"></s:password>
            <s:submit value="login"></s:submit>
        </s:form>
    </body>
</html>
