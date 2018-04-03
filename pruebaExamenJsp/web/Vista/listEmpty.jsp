<%-- 
    Document   : listEmpty
    Created on : 03-abr-2018, 19:34:07
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
                    SimpleDateFormat fecha = new SimpleDateFormat("d-MM-yyyy");
                    String fechaAltaFormateada = fecha.format(fechaAlta);
                    String depart = p.getDepartamento();
            %>
            <tr>

                <td><%=dni%></td>
                <td><%=nombre%></td>
                <td><%=apellidos%></td>
                <td><%=fechaAltaFormateada%></td>
                <td><%=depart%></td>
            </tr>
            <%}%>

        </table>
        <form name="formularioProfes" action="profesoresServlet" method="post">
            <input type="hidden" name="Accion" value="listNuevos">
            <input type="submit" name="ListarNuevos" value="Ver solo nuevos profesores">
        </form>
        <form name="formularioProfes" action="profesoresServlet" method="post">
            <input type="hidden" name="Accion" value="formAlta">
            <input type="submit" name="Agregar" value="Agregar Nuevo Profesor">
        </form>    
        <hr>
        <form name="formularioProfes" action="profesoresServlet" method="post"> 
            <input type="hidden" name="Accion" value="cancelarAlta">
            <input type="submit" name="Cancelar" value="Cancelar Modificacion Profesor">
        </form>
    </body>
</html>
