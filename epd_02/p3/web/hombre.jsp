<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css" />
        <script type='text/javascript' src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
        <title>Epd2_p3</title>
    </head>
    <body>
        <%
            if (request.getParameter("deslogarse") != null) {

                Cookie cookieDeslogarse = null;
                Cookie[] vCookie = request.getCookies();

                for (int i = 0; i < vCookie.length; i++) {
                    cookieDeslogarse = vCookie[i];
                    cookieDeslogarse.setMaxAge(0);
                    response.addCookie(cookieDeslogarse);
                }

                response.sendRedirect("index.jsp");

            } else {

                if (request.getCookies() != null) {
                    Cookie cookieHombre = null;
                    Cookie[] cookies = request.getCookies();

                    if (cookies.length > 0) {
        %><h1>Hola Humano</h1><%
            for (int i = 0; i < cookies.length; i++) {
                cookieHombre = cookies[i];

        %><p><%=cookieHombre.getValue()%></p><%

                        }
                    }
                }
            }

        %>
        <div class="container">

            <form action="#" method="post">

                <div class="row">
                    <input type="submit" name="deslogarse" value="Salir">
                </div>
            </form>
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>

