<%-- 
    Document   : index
    Created on : 13-jun-2018, 20:16:07
    Author     : jalc
--%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- page con la session a true  --%>
<%@page session="true" %>
<%-- page portamos el modelo con la clase  --%>
<%@page import="modelo.Bebe" %>
<%-- declaramos la lista a mostrar llamando al controlador ya que el parametro que le pasamos 
al request.getAttribute es el nombre que nos hemos inventado en el controlador y 
hacemos el casting delante del request--%>
<%List<Bebe> listaBebes = (List<Bebe>) request.getAttribute("listaBebesBBDD");%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestión de bebés</title>
    </head>
    <body>
        <h1>Gestión de bebés</h1>

        <form action="Controlador" method="post">
            <input type="hidden" name="accion" value="login" />
            <input type="submit" name="Login" value="login" />
        </form>

        <table border=1 cellspacing=1 cellpadding=2 width="50%" bgcolor="#FFFFFF">
            <caption>Bebés registrados</caption>
            <tr>
                <th>DNI</th>
                <th>Nombre del padre</th>
                <th>Nombre de la madre</th>
                <th>Hora nacimiento</th>
                <th>Hora salida incubadora</th>

            </tr>
            <%
                for (Bebe b : listaBebes) {%>
            <tr>
                <td><%=b.getDni()%></td>
                <td><%=b.getNombrePadre()%></td>
                <td><%=b.getNombreMadre()%></td>
                <td><%=b.getHoraNacimiento()%></td>
                <%-- comprobamos que la hora de salida no sea nula, en caso contrario 
mostraremos un mensaje de error--%>
                <td><%if (b.getHoraSalidaIncubadora()==null) {
                        b.setHoraSalidaIncubadora("sigue en la incubadora");
                    %><%=b.getHoraSalidaIncubadora()%>
                    <% } else {%>

                    <%=b.getHoraSalidaIncubadora()%>
                </td>
                <%}%>
            </tr>

            <%
                }
            %>

        </table>

    </body>
</html>
