<%-- 
    Document   : hombre
    Created on : 09-feb-2017, 20:32:34
    Author     : aflorom
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>p4</title>
    </head>
    <body>
        <%
            if (request.getParameter("logout") != null) {
                Cookie c2 = null;
                Cookie[] cookies2 = request.getCookies();
                for (int i = 0; i < cookies2.length - 1; i++) {
                    c2 = cookies2[i];
                    c2.setMaxAge(0);
                    response.addCookie(c2);
                }
                response.sendRedirect("index.jsp");
            } else {
        %>
        <h1>Hello Hombre!</h1>
        <%
            if (request.getCookies() != null) {
                Cookie c = null;
                Cookie[] cookies = request.getCookies();

                if (cookies.length > 0) {
                    for (int i = 0; i < cookies.length - 1; i++) {
                        c = cookies[i];

                        out.print(c.getValue());
        %>
        <br>
        <%
                        }
                    }
                }
            }
        %>
        <form method="post" action="#">
            <input type="hidden" name="accion" value="A">
            <input type="submit" name="logout" value="Logout">
        </form>
    </body>
</html>
