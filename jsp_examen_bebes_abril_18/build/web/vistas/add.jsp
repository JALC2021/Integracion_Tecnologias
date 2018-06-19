<%-- 
    Document   : add
    Created on : 13-jun-2018, 20:18:22
    Author     : jalc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alta de un bebés</title>
    </head>
    <body>
        <h1>Alta de un bebés</h1>

        <form action="Controlador" method="post"> 

            <table cellspacing=1 cellpadding=2 bgcolor="#FFFFFF">
                <tr>
                    <td>DNI</td>
                    <td><input type="text" name="dni"/></td>
                </tr>
                <tr>
                    <td>Nombre del Padre</td>
                    <td>
                        <input type="text" name="nombrePadre"/>
                    </td>
                </tr>
                <tr>
                    <td>Nombre de la madre</td>
                    <td>
                        <input type="text" name="nombreMadre"/>
                    </td>
                </tr>
                <tr>
                    <td>Hora de nacimiento</td>
                    <td>
                        <input type="text" name="horaNacimiento"/> : 
                        <input type="text" name="minNacimiento"/>
                    </td>                     
                </tr>
                <tr>
                    <td>Hora de salida de la incubadora</td>
                    <td>
                        <input type="text" name="horaIncubadora"/> : 
                        <input type="text" name="minIncubadora"/>
                    </td>                     
                </tr>                
                <tr>
                    <td colspan="2">
                        <input type="hidden" name="accion" value="altaBebe">
                        <input type="submit" name="Alta" value="Alta bebé">

                    </td>
                </tr>
            </table>
        </form>
        <form action="Controlador" method="post"> 
            <input type="hidden" name="accion" value="cancelarAlta">
            <input type="submit" name="Cancelar" value="Cancelar alta de bebé">
        </form>
</html>
