<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css" />
        <script type='text/javascript' src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
         <title>Epd2_p6</title>
    </head>
    <body>
        <header>
            <h1>Resultado</h1>
        </header>
        <%
            if (request.getParameter("deslogarse") != null) {

                session.invalidate();

                response.sendRedirect("index.jsp");

            } else {

        %>
        <div class="container">
            <h2>Hola Humano</h2>
            <p class="parrafos">Nombre:&nbsp;<%=session.getAttribute("nombre")%></p>
            <p class="parrafos">Apellidos:&nbsp;<%=session.getAttribute("apellidos")%></p>
            <p class="parrafos">Sexo:&nbsp;<%=session.getAttribute("sexo")%></p>
            <%
                }
            %>
            <form action="#" method="post">

                <div class="row">
                    <input type="submit" name="deslogarse" value="Salir">
                </div>
            </form>
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>

