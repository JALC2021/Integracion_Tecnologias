<%-- 
    Document   : delete
    Created on : 02-abr-2018, 21:59:16
    Author     : jalc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete profesor</title>
    </head>
    <body>
        <h1>Delete Profesor</h1>
        
        <h2><font color='red'></font></h2>
        
        <form name="formularioProfes" action="profesoresServlet" method="post"> 

            <table cellspacing=1 cellpadding=2 bgcolor="#FFFFFF">
                <tr>
                    <td>DNI</td>
                    <td><input type="text" name="dni"/></td>
                </tr>
                
                <tr>
                    <td colspan="2">
                        <input type="hidden" name="Accion" value="eliminarProfe">
                        <input type="submit" name="Alta" value="Eliminar Profesor">
                        
                    </td>
                </tr>
            </table>
            </form>
        <form name="formularioProfes" action="profesoresServlet" method="post"> 
            <input type="hidden" name="Accion" value="cancelarAlta">
            <input type="submit" name="Cancelar" value="Cancelar Modificacion Profesor">
        </form>

    </body>
</html>
