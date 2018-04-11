<%-- 
    Document   : formulario
    Created on : 10-abr-2018, 18:49:32
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

        <s:form action="actionLogin">

            <s:textfield key="D.n.i " name="dni" />
            <s:textfield key="Nombre " name="nombre" />
            <s:textfield key="Apellidos " name="apellidos" />
            <s:password  key="Contraseña " name="contrasenya" />
            <s:textfield type="email" key="Email " name="email" />
            <s:date name="fechaNacimiento" format="dd/MM/yyyy" />
            <s:textfield key="Numero de Telefono " name="numeroTelefono" type="number"/>
            <s:textarea key="Cuentanos mas sobre ti... " name="comentario" />
            <s:submit value="Enviar"/>
            

        </s:form>

    </body>
</html>
