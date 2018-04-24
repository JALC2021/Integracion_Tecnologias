<%-- 
    Document   : list
    Created on : 24-abr-2018, 18:41:05
    Author     : jalc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reserva de las Guardas. System Manager</title>
    </head>
    <body>
        <h1>Reserva de las Guardas. System Manager</h1>
        <s:form id="filtro" name="filtro" action="listaFiltroAnimal" namespace="/" method="post">
            <table class="wwFormTable">
                <table>
                    <tr>               
                        <td>
                    <tr>
                        <td class="tdLabel"><s:label for="filtro_tipoAnimal" class="label">Animal:</s:label></td>
                        <td><s:select name="tipoAnimal" id="filtro_tipoAnimal" list="listaTipoAnimal" listKey="animal" listValue="animal">

                            </s:select>
                        </td>
                    </tr>


                    </td>
                    </tr>
                    <tr>
                        <td>
                    <tr>
                        <td colspan="2"><div align="right"><s:submit id="filtro_0" value="Filter by animal"/>
                            </div>
                        </td>
                    </tr>


                    </td>
                    </tr>                
                </table>
            </table>
        </s:form>

        <s:form id="listado" name="listado" action="controladorLista" method="post">
            <table class="wwFormTable">
                <table >            
                    <td>
                    <tr>
                        <td colspan="2"><div align="right"><s:submit id="listado_0" value="Remove filter"/>
                            </div>
                        </td>
                    </tr>


                    </td>
                    </tr>                
                </table>
            </table>
        </s:form>





        <table border=1 cellspacing=1 cellpadding=2 width="100%" bgcolor="#FFFFFF">
            <tr>
                <td><b>Identificador</b></td>
                <td><b>Tipo Animal</b></td>
                <td><b>Pais</b></td>
                <td><b>Precio</b></td>
                <td><b>Email</b></td>
                <td>
                    <s:form id="formulario" name="formulario" action="addAnimal" method="post">
                        <table class="wwFormTable">
                            <tr>
                                <td colspan="2"><div align="right"><s:submit id="formulario_0" value="Add"/>
                                    </div></td>
                            </tr>


                        </table>
                    </s:form>

                </td>
            </tr>
            <s:iterator value="listaReservaAnimales">
                <tr>
                    <!--id de los animales-->
                    <s:hidden value="id"></s:hidden>
                    <td><s:property value="identificador"></s:property></td>
                    <td><s:property value="tipoAnimal"></s:property></td>
                    <td><s:property value="pais"></s:property></td>
                    <td><s:property value="precio"></s:property></td>
                    <td><s:property value="email"></s:property></td>
                        <td>
                        <s:form id="borrarAnimal" name="borrarAnimal" action="deleteAnimal" method="post">
                            <table class="wwFormTable">
                                <s:hidden value="id" name="borrar" value="1" id="borrarAnimal_borrar"></s:hidden>
                                    <tr>
                                        <td colspan="2"><div align="right"><input type="submit" id="borrarAnimal_0" value="Delete"/>
                                            </div></td>
                                    </tr>


                                </table>
                        </s:form>

                    </td>
                </tr>
            </s:iterator>
        </table>

    </body>
</html>
