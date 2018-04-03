<%-- 
    Document   : modify
    Created on : 02-abr-2018, 21:35:40
    Author     : jalc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modify profesor</title>
    </head>
    <body>
        <h1>Modify Profesor</h1>
        
        <h2><font color='red'></font></h2>
        
        <form name="formularioProfes" action="profesoresServlet" method="post"> 

            <table cellspacing=1 cellpadding=2 bgcolor="#FFFFFF">
                <tr>
                    <td>DNI</td>
                    <td><input type="text" name="dni"/></td>
                </tr>
                <tr>
                    <td>Nombre</td>
                    <td><input type="text" name="nombre"/></td>
                </tr>
                <tr>
                    <td>Apellidos</td>
                    <td><input type="text" name="apellidos"/></td>
                </tr>
                <tr>
                    <td>Fecha de Alta <br>(día/mes/año)</td>
                    <td>
                        <input type="text" name="diaAlta" size="2" maxlength="2"/> /
                        <input type="text" name="mesAlta" size="2" maxlength="2"/> /
                        <input type="text" name="anioAlta" size="4" maxlength="4"/>
                    </td>
                </tr>
                <tr>
                    <td>Departamento</td>
                    <td>
                        <select name="departamento">
                            <option value="informatica">Informática</option>
                            <option value="deporte">Deporte</option>
                            <option value="lade">LADE</option>
                            <option value="biotecnologia">Biotecnología</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="hidden" name="Accion" value="modicicarProfe">
                        <input type="submit" name="Alta" value="Modificar Profesor">
                        
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
