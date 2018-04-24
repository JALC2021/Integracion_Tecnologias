<%-- 
    Document   : listEmpty
    Created on : 24-abr-2018, 18:44:11
    Author     : jalc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reserva de las Guardas. System Manager</title>
    </head>
    <body>
        <h1>Reserva de las Guardas. System Manager</h1>
        <form id="filtro" name="filtro" action="/ItEv2STRUTS_2/reserva/actions/filtro.action" method="post">
            <table class="wwFormTable">
                <table >
                    <tr>               
                        <td>
                    <tr>
                        <td class="tdLabel"><label for="filtro_tipoAnimal" class="label">Animal:</label></td>
                        <td><select name="tipoAnimal" id="filtro_tipoAnimal">
                                <option value="lobo">lobo</option>
                                <option value="tigre">tigre</option>
                                <option value="jirafa">jirafa</option>
                                <option value="elefante">elefante</option>
                            </select>
                        </td>
                    </tr>


                    </td>
                    </tr>
                    <tr>
                        <td>
                    <tr>
                        <td colspan="2"><div align="right"><input type="submit" id="filtro_0" value="Filter by animal"/>
                            </div></td>
                    </tr>


                    </td>
                    </tr>                
                </table>
            </table></form>




        <form id="listado" name="listado" action="/ItEv2STRUTS_2/reserva/actions/listado.action" method="post">
            <table class="wwFormTable">
                <table >            
                    <td>
                    <tr>
                        <td colspan="2"><div align="right"><input type="submit" id="listado_0" value="Remove filter"/>
                            </div></td>
                    </tr>


                    </td>
                    </tr>                
                </table>
            </table></form>





        <table border=1 cellspacing=1 cellpadding=2 width="100%" bgcolor="#FFFFFF">
            <tr>
                <td><b>Identificador</b></td>
                <td><b>Tipo Animal</b></td>
                <td><b>Pais</b></td>
                <td><b>Precio</b></td>
                <td><b>Email</b></td>
                <td>
                    <form id="formulario" name="formulario" action="/ItEv2STRUTS_2/reserva/actions/formulario.action" method="post">
                        <table class="wwFormTable">
                            <tr>
                                <td colspan="2"><div align="right"><input type="submit" id="formulario_0" value="Add"/>
                                    </div></td>
                            </tr>


                        </table></form>

                </td>
            </tr>


            <tr>
                <td colspan="6"><b>No animals in the sanctuary</b></td>

        </table>

    </body>
</html>
