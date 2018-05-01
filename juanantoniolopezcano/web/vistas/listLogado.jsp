<%-- 
    Document   : listLogado
    Created on : 25-abr-2018, 18:41:33
    Author     : aulas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
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

                    <s:form id="formInsertar" name="formInsertar" action="insert" method="post">
                        <s:submit id="formInsertar_0" value="Add"/>

                    </s:form>

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

                    <th>
                        <s:form id="borrarCita" name="borrarCita" action="/IT_EV2_STRUTS_1718/borrarCita.action" method="post">
                            <s:hidden name="idBorrar" value="id" id="borrarCita_idBorrar"/>                                
                            <s:submit id="borrarCita_0" value="Delete"/>

                        </s:form>
                    </th>
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


        <s:form id="deslogar" name="deslogar" action="/IT_EV2_STRUTS_1718/deslogar.action" method="post">
            <h3></h3>
            <s:submit id="deslogar_0" value="Go Offline"/>

        </s:form>

    </body>
</html>
