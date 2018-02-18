<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>P1_epd1</title>
    </head>
    <body>
        <h1>Datos recibidos</h1>
        <%
            String nombre = (String) request.getParameter("nombre");
            String apellidos = (String) request.getParameter("apellidos");
            String email = (String) request.getParameter("email");
            String bloque[] = request.getParameterValues("bloque");
            String nota = (String) request.getParameter("nota");
            String estudiadoIt = (String) request.getParameter("estudiadoIt");
        %>
        <p>Nombre: <%= nombre%></p>
        <p>Apellidos: <%= apellidos%></p>
        <p>Email: <%= email%></p>
        <%
            if (estudiadoIt.equals("si")) {
        %><p>Bloque o bloques que encontr&oacute; m&aacute;s dif&iacute;ciles:</p><%
            for (int i = 0; i < bloque.length; i++) {
                %><ul><li><%=bloque[i]%></li></ul><%
        }

        } else if (estudiadoIt.equals("no")) {
        %>
        Nota que espera obtener: <%= nota%>
        <%
            }
        %>

    </body>
</html>
