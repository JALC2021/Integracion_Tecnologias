<%-- 
    Document   : index
    Created on : 09-feb-2017, 20:04:50
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
                Cookie c1 = new Cookie("nombre", request.getParameter("nombre"));
                c1.setMaxAge(60);

                response.addCookie(c1);
                Cookie c2 = new Cookie("apellidos", request.getParameter("apellidos"));
                c2.setMaxAge(60);
                response.addCookie(c2);
              
                if(request.getParameter("sexo").equals("hombre")){
                    Cookie c3 = new Cookie("hombre", request.getParameter("sexo"));
                    c3.setMaxAge(60);
                    response.addCookie(c3);
                    response.sendRedirect("hombre.jsp");
                }else{
                
                    Cookie c4 = new Cookie("mujer", request.getParameter("sexo"));
                    c4.setMaxAge(60);
                    response.addCookie(c4);
                    response.sendRedirect("mujer.jsp");
                }
            }
        %>

        <h3>Registro</h3>
        <form method="post" action="#">
            Nombre: <input type="text" name="nombre"><br>
            Apellidos: <input type="text" name="apellidos"><br>
            Sexo: Hombre <input type="radio" name="sexo" value="hombre"> Mujer <input type="radio" name="sexo" value="mujer"><br>
            <input type="submit" name="enviar" value="Enviar">
        </form>
    </body>
</html>
