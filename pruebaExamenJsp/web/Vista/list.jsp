<%-- 
    Document   : list
    Created on : 01-abr-2018, 12:43:54
    Author     : jalc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Profesores UPO</title>
    </head>
    <body>
        <h1>Profesores de la Universidad Pablo de Olavide (UPO)</h1>   

        <table border=1 cellspacing=1 cellpadding=2 width="50%" bgcolor="#FFFFFF">
            <caption>Profesores</caption>
            <tr>
                <th>DNI</th>
                <th>Nombre</th>
                <th>Apellidos</th>
                <th>Fecha Alta</th>
                <th>Departamento</th>
            </tr>

            <tr>

                <td>11111111A</td>
                <td>Carlos</td>
                <td>Barranco</td>
                <td>2006-02-02</td>
                <td>Informatica</td>
            </tr>


        </table>
        <form name="formularioProfes" action="ProfesoresServlet" method="post">
            <input type="hidden" name="Accion" value="listNuevos">
            <input type="submit" name="ListarNuevos" value="Ver solo nuevos profesores">
        </form>
        <form name="formularioProfes" action="ProfesoresServlet" method="post">
            <input type="hidden" name="Accion" value="formAlta">
            <input type="submit" name="Agregar" value="Agregar Nuevo Profesor">
        </form>    
        <hr>
    </body>
</html>
