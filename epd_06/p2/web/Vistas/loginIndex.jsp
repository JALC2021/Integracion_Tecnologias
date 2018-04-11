<%-- 
    Document   : loginIndex
    Created on : 14-mar-2018, 19:57:29
    Author     : jalc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
        <script type='text/javascript' src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
        <title>Epd_06_p2</title>
    </head>
    <body>
        <div class="container">

            <h2>Rellene el formulario con sus datos</h2>

            <body>
              
                <s:form action="loginIndex" method="post">
                    
                    <label>Nombre</label><s:textfield field="nombre" name="nombre" />
                    <s:textfield field="apellidos" name="apellidos" />
                    <s:password field="password" name="password" />
                    <s:textfield field="email" key="email" name="email" />
                    <s:textfield field="edad" type="number" name="edad" />
                    <s:textfield field="telefono"  name="telefono" />
                    <s:textfield field="Fecha de Nacimiento" type="date" name="fechanacimienti" />
                    <s:textfield field="Comentario" type="textarea" name="comentario" />
                    <s:submit value="Aceptar"/>

                </s:form>

        </div>
        <%@include file="../footer.jsp" %>
    </body>

</html>
