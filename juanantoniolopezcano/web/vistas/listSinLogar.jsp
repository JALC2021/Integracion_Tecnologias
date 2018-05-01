<%-- 
    Document   : listSinLogar
    Created on : 25-abr-2018, 18:41:16
    Author     : aulas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bienvenido al programa de citas</title>
    </head>
    <body>
        <h1>Bienvenido al programa de citas</h1>

        <table border='1'>
            <tr>
                <th>ID</th>
                <th>Empresa</th>
                <th>URL empresa</th> 
                <th>Hora cita</th>
                <th>Precio</th>
                <th>
                </th>
            </tr>
            <s:iterator value="listaCitas">
                <tr>
                    <s:hidden value="id">
                        <td><s:property value="id"></s:property></td>
                        <td><s:property value="empresa"></s:property></td>                    
                        <td><s:property value="urlEmpresa"></s:property></td>
                        <td><s:property value="horaCita"></s:property></td>                        
                        <td><s:property value="precio"></s:property></td>
                    </s:hidden>
                </tr>
            </s:iterator>
        </table>

        <s:form id="busqueda" name="busqueda" action="buscar" method="post">
            Introduzca hora a buscar: <s:textfield name="horaBuscar" id="busqueda_horaBuscar"/>

            <s:submit id="busqueda_btnBuscarCita" name="btnBuscarCita" value="Buscar"/>
            <br>
        </s:form>

        <s:form id="listado" name="listado" action="mostrarTodos" method="post">
            <s:submit id="listado_0" value="Mostrar todos"/>

        </s:form>

        <s:form id="formLogin" name="formLogin" action="login" method="post">
            <s:submit id="formLogin_0" value="Login"/>

        </s:form>

    </body>
</html>
