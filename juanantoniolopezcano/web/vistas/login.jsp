<%-- 
    Document   : login
    Created on : 25-abr-2018, 18:40:57
    Author     : aulas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page session="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h1><s:text name="Login"></s:text></h1>
        <s:form id="login" name="login" action="loginOk" method="post">
            <s:textfield label="Usuario" name="usuario" value="" id="login_usuario"/>
            <s:password label="Password"  name="password" id="login_password"/>
            <s:submit id="login_0" value="Login"/>

        </s:form>

    </body>
</html>

