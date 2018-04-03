<%-- 
    Document   : profesMayor2016
    Created on : 03-abr-2018, 19:09:40
    Author     : jalc
--%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%--Esto tenemos que importarlo para poder acceder a las lista --%>
<%@page session="true" %>
<%@page import="Modelo.Profesor"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Date"%>

<% List<Profesor> listaProfesores = (List<Profesor>) request.getAttribute("profesores");%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Profesores UPO</title>
    </head>
    <body>
        <h1>Profesor por fecha</h1>

        <h2><font color='red'></font></h2>

        <form name="formularioProfes" action="profesoresServlet" method="post"> 

            <table cellspacing=1 cellpadding=2 bgcolor="#FFFFFF">

                <tr>
                    <td>Fecha de Alta <br>(día/mes/año)</td>
                    <td>
                        <input type="text" name="diaAlta" size="2" maxlength="2"/> /
                        <input type="text" name="mesAlta" size="2" maxlength="2"/> /
                        <input type="text" name="anioAlta" size="4" maxlength="4"/>
                    </td>
                </tr>
            </table>
            <hr>
            <form name="formularioProfes" action="profesoresServlet" method="post">
                <input type="hidden" name="Accion" value="filtrarFecha">
                <input type="submit" name="ListarNuevos" value="Filtrar por fecha">
            </form>
            <hr>
            <form name="formularioProfes" action="profesoresServlet" method="post">
                <input type="hidden" name="Accion" value="formAlta">
                <input type="submit" name="Agregar" value="Agregar Nuevo Profesor">
            </form>  
            <hr>
            <form name="formularioProfes" action="profesoresServlet" method="post"> 
                <input type="hidden" name="Accion" value="formModificar">
                <input type="submit" name="Modificar Profesor" value="Modificar Profesor">
            </form>
            <hr>
            <form name="formularioProfes" action="profesoresServlet" method="post"> 
                <input type="hidden" name="Accion" value="formEliminar">
                <input type="submit" name="Eliminar Profesor" value="Eliminar Profesor">
            </form>
            <hr>
            <form name="formularioProfes" action="profesoresServlet" method="post"> 
                <input type="hidden" name="Accion" value="cancelarAlta">
                <input type="submit" name="Cancelar" value="Cancelar Modificacion Profesor">
            </form>
    </body>
</html>
