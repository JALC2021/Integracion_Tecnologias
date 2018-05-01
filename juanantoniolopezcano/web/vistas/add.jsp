<%-- 
    Document   : add
    Created on : 25-abr-2018, 18:41:45
    Author     : aulas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario de inserción de citas</title>
        <script src="/IT_EV2_STRUTS_1718/struts/utils.js" type="text/javascript"></script>
    </head>
    <body>
        <h1>Formulario de inserción de citas</h1>
        <s:form id="insertarCita" name="insertarCita" action="insertOk" method="post"> 
            <table>

                <tr><td><s:label>id:</s:label></td><td><s:textfield name="id" id="insertarCita_idA"/></td></tr>
                <tr><td><s:label>empresa:</s:label></td><td><s:textfield name="empresa" id="insertarCita_empresaA"/></td></tr>                 
                <tr><td><s:label>Url:</s:label></td><td><s:textfield name="urlEmpresa" id="insertarCita_urlEmpresaA"/></td></tr>
                <tr><td><s:label>Hora Cita:</s:label></td><td><s:textfield name="horaCita" id="insertarCita_horaCitaA"/></td></tr>
                <tr><td><s:label>Precio:</s:label></td><td><s:textfield name="precio" id="insertarCita_precioA"/></td></tr>      
                <tr><td><s:submit id="insertarCita_botonA" name="botonA" value="Insertar cita"/></td></tr>

            </table>
        </s:form>

    </body>
</html>

