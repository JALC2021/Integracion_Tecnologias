<%-- 
    Document   : newjsp
    Created on : 05-feb-2018, 18:08:12
    Author     : jalc
--%>

<%@page import="java.util.Enumeration"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% String[] parametros = {"Nombre", "correo-e", "dni"}; %>
        <form action="index.jsp" method="get">
            <table border=1 cellspacing=1 cellpadding=2>
                <% for (int i = 0; i < parametros.length; i++) {%>
                <tr>
                    <td><%=parametros[i]%></td>
                    <td><input type="text" name="<%=parametros[i]%>">
                    </td>
                </tr>
                <% } %>
                <tr>
                    <td><input type="submit" value="Enviar" size="2"></td>
                </tr>
            </table>
        </form>
        <hr>
        <table border=1 cellspacing=1 cellpadding=2>
            <% Enumeration enu = request.getParameterNames();
                while (enu.hasMoreElements()) {
                    String paramName = (String) enu.nextElement();
                    String paramValue = (String) request.getParameter(paramName);
            %>
            <tr>
                <td><%=paramName%></td>
                <td><%=paramValue%></td>
            </tr>
            <% }%>
        </table>
    </body>
</html>

