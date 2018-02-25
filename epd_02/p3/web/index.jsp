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
            if (request.getCookies() != null) {
                Cookie[] cookies = request.getCookies();
                if (cookies.length > 0) {
                    for (int i = 0; i < cookies.length; i++) {
                        if (cookies[i].getValue().equals("hombre")) {
                            response.sendRedirect("hombre.jsp");

                        }
                        if (cookies[i].getValue().equals("mujer")) {
                            response.sendRedirect("mujer.jsp");

                        }
                    }
                }
            }

            if (request.getParameter("enviar") != null) {

                Cookie cookieNombre = new Cookie("nombre", request.getParameter("nombre"));
                cookieNombre.setMaxAge(30);
                response.addCookie(cookieNombre);

                Cookie cookieApellidos = new Cookie("apellidos", request.getParameter("apellidos"));
                cookieApellidos.setMaxAge(30);
                response.addCookie(cookieApellidos);
                
                String sexo=request.getParameter("sexo");
                        
                if (sexo.equals("hombre")) {
                    Cookie cookieHombre = new Cookie("hombre",sexo );
                    cookieHombre.setMaxAge(30);
                    response.addCookie(cookieHombre);
                    response.sendRedirect("hombre.jsp");

                } else {
                    Cookie cookieMujer = new Cookie("mujer", sexo);
                    cookieMujer.setMaxAge(30);
                    response.addCookie(cookieMujer);
                    response.sendRedirect("mujer.jsp");

                }
            }

        %>
        <header>
            <h1>Registro Usuario</h1>
        </header>
        <div class="container">

            <form action="#" method="post">
                <div class="row">
                    <div class="col-25">
                        <label>Nombre</label>
                    </div>
                    <div class="col-75">
                        <input type="text"  name="nombre" placeholder="Introduzca su nombre.." required>
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Apellidos</label>
                    </div>
                    <div class="col-75">
                        <input type="text"  name="apellidos" placeholder="Introduzca sus apellidos.." required>
                    </div>
                </div>

                <div class="row">
                    <div class="col-25">
                        <label>Sexo</label>
                    </div>
                    <div class="col-75">
                        <label class="labelRadio">Hombre</label><input class="radio" type="radio" name="sexo" value="hombre">
                        <input class="radio" type="radio" name="sexo" value="mujer"><label class="labelRadio">Mujer</label>
                    </div>
                </div>

                <div class="row">
                    <input type="submit" name="enviar" value="Enviar">
                </div>
            </form>
        </div>
        <%@include file="footer.jsp" %>

    </body>
</html>
