<%-- 
    Document   : index
    Created on : 02-abr-2018, 17:57:39
    Author     : jalc
--%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Profesor" %>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% List<Profesor> listaProfesores = (List<Profesor>) request.getAttribute("profesores");%>
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
            <%for (Profesor p : listaProfesores) {
                    String dni = p.getDni();
                    String nombre = p.getNombre();
                    String apellidos = p.getApellidos();
                    Date fechaAlta = p.getFechaAlta();
                    String depart = p.getDepartamento();
            %>
            <tr>

                <td><%=dni%></td>
                <td><%=nombre%></td>
                <td><%=apellidos%></td>
                <td><%=fechaAlta%></td>
                <td><%=depart%></td>
            </tr>
            <%}%>

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
