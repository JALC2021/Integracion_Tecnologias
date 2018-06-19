<%-- 
    Document   : indexConBotones
    Created on : 13-jun-2018, 20:16:45
    Author     : jalc
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- page con la session a true  --%>
<%@page session="true" %>
<%--recojo el nombre de usuario de la variable de session--%>
<%String usuarioSession = (String) session.getAttribute("usuario");%>
<%-- page portamos el modelo con la clase  --%>
<%@page import="modelo.Bebe" %>
<%-- declaramos la lista a mostrar llamando al controlador ya que el parametro que le pasamos 
al request.getAttribute es el nombre que nos hemos inventado en el controlador y 
hacemos el casting delante del request--%>
<%List<Bebe> listaBebes = null;%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestión de bebés</title>
    </head>
    <body>
        <h1>Gestión de bebés</h1>

        <%if (usuarioSession != null) {%>

        <h2>Bienvenido/a <%=usuarioSession%> a la gesti&oacute;n de beb&eacute;s.</h2>
        <form action="Controlador" method="post">
            <input type="hidden" name="accion" value="deslogar" />
            <input type="submit" name="Deslogar" value="Deslogar" />
        </form>        

        <%} else {%>

        <form action="Controlador" method="post">
            <input type="hidden" name="accion" value="login" />
            <input type="submit" name="Login" value="login" />
        </form>

        <%}%>

        <table border=1 cellspacing=1 cellpadding=2 width="50%" bgcolor="#FFFFFF">
            <caption>Bebés registrados</caption>
            <tr>
                <th>DNI</th>
                <th>Nombre del padre</th>
                <th>Nombre de la madre</th>
                <th>Hora nacimiento</th>
                <th>Hora salida incubadora</th>
                <%if (usuarioSession != null) {%>
                <th>
                    
                    <form action="Controlador" method="post">
                        <input type="hidden" name="accion" value="formAlta" />
                        <input type="submit" name="Alta" value="Alta de bebés" />
                    </form>
                    
                </th>
                
                <%}%>
            </tr>

            <%
                
                if (request.getAttribute("bebesIncubadora") != null) {

                    //llamamos al metodo de la bbdd que hemos creado para filtrar
                    listaBebes = (List<Bebe>) request.getAttribute("bebesIncubadora");

                } else {

                    listaBebes = (List<Bebe>) request.getAttribute("listaBebesBBDD");
                }
                
                if (listaBebes.isEmpty()) {

            %><tr><td>No hay beb&eacute;s registrados</td></tr><% 
                
                    } else {

                for (Bebe b : listaBebes) {%>
            <tr>
                <td><%=b.getDni()%></td>
                <td><%=b.getNombrePadre()%></td>
                <td><%=b.getNombreMadre()%></td>
                <td><%=b.getHoraNacimiento()%></td>
                <%-- comprobamos que la hora de salida no sea nula, en caso contrario 
                     mostraremos un mensaje de error--%>
                <td><%if (b.getHoraSalidaIncubadora() == null) {
                        b.setHoraSalidaIncubadora("sigue en la incubadora");
                    %><%=b.getHoraSalidaIncubadora()%>
                    <% } else {%>

                    <%=b.getHoraSalidaIncubadora()%>
                </td>
                <%}%>

                <% if (usuarioSession != null) {%>
                <td>   
                    <form action="Controlador" method="post">
                        <input type="hidden" name="dni" value="<%=b.getDni()%>" />
                        <input type="hidden" name="accion" value="borrar" />
                        <input type="submit" name="Borrar" value="Borrar" />
                    </form>

                </td>
                <%}%>
            </tr>

            <%
                    }
                }
            %>

        </table>

        <%if (usuarioSession != null) {%>
        <form action="Controlador" method="post">
            <input type="hidden" name="accion" value="bebesIncubadora" />
            <input type="submit" name="bntIncubadora" value="Mostrar bebés que están en la incubadora" />
        </form>        
        <%}%>
    </body>
</html>

