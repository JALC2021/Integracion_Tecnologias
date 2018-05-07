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
        <s:i18n name="controlador.acciones.addAction">
            <h1><s:text name="Formulario de inserción de citas"></s:text></h1>
            <s:form id="insertarCita" name="insertarCita" action="insertOk" method="post"> 
                
                <s:textfield label="Id" key="id" name="id" id="insertarCita_idA"/>
                <s:textfield label="Empresa" key="empresa" name="empresa" id="insertarCita_empresaA"/>             
                <s:textfield label="Url Empresa" key="urlEmpresa" name="urlEmpresa" id="insertarCita_urlEmpresaA"/>
                <s:textfield label="Hora Cita" key="horaCita" name="horaCita" id="insertarCita_horaCitaA"/>
                <s:textfield label="Precio" key="precio" name="precio" id="insertarCita_precioA"/>   
                <s:submit id="insertarCita_botonA" name="botonA" value="Insertar cita"/>

            </s:form>
        </s:i18n>
    </body>
</html>

