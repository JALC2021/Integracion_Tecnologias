<%-- 
    Document   : listLogado
    Created on : 25-abr-2018, 18:41:33
    Author     : aulas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@page session="true" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bienvenido al programa de citas</title>
    </head>
    <body>


        <s:if test="%{nombreUsuario==null}">
            <h1>Bienvenido al programa de citas</h1>
        </s:if>

        <s:else>
            <h3>Bienvenido <s:property value="nombreUsuario"></s:property></h3>
        </s:else>

        <s:if test="%{listaCitas.isEmpty()}">
            <p>No hay citas disponibles</p>   
        </s:if>

        <s:else>

            <table border='1'>
                <tr>
                    <th>ID</th>
                    <th>Empresa</th>
                    <th>URL empresa</th> 
                    <th>Hora cita</th>
                    <th>Precio</th>
                    <th><s:if test="%{nombreUsuario!=null}">

                            <s:form id="formInsertar" name="formInsertar" action="insert" method="post">
                                <s:submit id="formInsertar_0" value="Add"/>

                            </s:form>
                        </s:if>
                    </th>
                </tr>

                <s:iterator value="listaCitas">
                    <tr>
                        <!--                    paso del parametro hidden mal-->

                        <s:hidden value="id"></s:hidden>
                        <td><s:property value="id"></s:property></td>
                        <td><s:property value="empresa"></s:property></td>                    
                        <td><s:property value="urlEmpresa"></s:property></td>
                        <td><s:property value="horaCita"></s:property></td>                        
                        <td><s:property value="precio"></s:property></td>
                        <td><s:if test="%{nombreUsuario!=null}">

                                <s:form id="borrarCita" name="borrarCita" action="borrar" method="post">

                                    <!--                    VALUE DE HIDDEN TIENE QUE SUPRIMIRSE -->
                                    <s:hidden name="id" id="borrarCita_idBorrar"/>
                                    <s:submit id="borrarCita_0" value="Delete"/>

                                </s:form>
                            </s:if>
                        </td>
                    </tr>

                </s:iterator>
            </table>
        </s:else>

        <s:form id="busqueda" name="busqueda" action="buscar" method="post">
            Introduzca hora a buscar: <s:textfield name="horaCita" id="busqueda_horaBuscar"/>

            <s:submit id="busqueda_btnBuscarCita" name="btnBuscarCita" value="Buscar"/>
            <br>
        </s:form>

        <s:form id="listado" name="listado" action="mostrarTodos" method="post">
            <s:submit id="listado_0" value="Mostrar todos"/>

        </s:form>

        <s:if test="%{nombreUsuario==null}">
            <s:form id="formLogin" name="formLogin" action="login" method="post">
                <s:submit id="formLogin_0" value="Login"/>

            </s:form>  
        </s:if>

        <s:else>
            <s:form id="deslogar" name="deslogar" action="deslogar" method="post">
                <h3>Bienvenido <s:property value="nombreUsuario"></s:property></h3>
                    <!--            falta eliminar varible de session-->

                <s:submit id="deslogar_0" value="Go Offline"/>
            </s:form>
        </s:else>     
    </body>
</html>
