<%-- 
    Document   : login
    Created on : 13-jun-2018, 20:08:46
    Author     : jalc
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            .formulario td {
                width: 50px;
                height: 25px;
            }
            th {
                width: 100px;
                height: 25px;
            }
        </style>
        <title>Gestión de bebés</title>
    </head>
    <body>
        <h1>Gestión de bebés</h1>
        <form action="Controlador" method="POST">

            <fieldset>
                <legend>Regístrese para acceder a la aplicación:</legend>
                <table class="formulario">
                    <tr>
                        <td>Usuario:</td>
                        <td><input type="text" name="usuario" /></td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td><input type="password" name="password" /></td>
                    </tr>                    
                    <tr>
                        <td><input type="submit" name="btnAceptar" value="Aceptar"/></td>
                        <td><input type="reset" name="btnCancelar" value="Cancelar"/></td>
                    <input type="hidden" name="accion" value="registro"/>
                    </tr>
                </table>
            </fieldset>
        </form> 
    </body>
</html>
