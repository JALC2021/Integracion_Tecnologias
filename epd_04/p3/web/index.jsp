<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="true"%>
<%@page import="Controlador.ParkingServlet"%>
<%@page import=" Modelo.Coche" %>
<%@page import=" Modelo.persistencia.DatosParking" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.List"%>
<%

    List<Coche> cochesAparcados = (List<Coche>) request.getAttribute("cochesAparcados");

%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link rel="stylesheet" type="text/css" href="style.css" />
        <title>Epd_4</title>
    </head>
    <body>
        <header><h1>Aparcamiento Zona Azul</h1></header>
        <div class="container">

            <table border="2">
                <tr>
                    <th>Matricula</th>
                    <th>Modelo</th>
                    <th>Hora de entrada</th>
                    <th>Hora de salida</th>
                    <th>Tiempo permitido</th>
                </tr>
                <%                    for (Coche cm : cochesAparcados) {

                        //Matricula
                        String matricula = cm.getMatricula();
//                        //Modelo
                        String modelo = cm.getModelo();
//                        //Hora entrada y salida
                        //Calendar horaEntrada = cm.getHoraEntrada();
                        //Calendar horaSalida = cm.getHoraSalida();
                        //Formato fecha
                        SimpleDateFormat formatoHora = new SimpleDateFormat("HH:mm");
                        //String HoraEntrada = formatoHora.format(horaEntrada.getTime());
                        //String HoraSalida = horaSalida == null ? "--" : formatoHora.format(horaSalida.getTime());
                        //Tiempo permitido
                        int tiempoPermitido = cm.getTiempoPermitido();
                        String TiempoPermitido = String.valueOf(tiempoPermitido);
                %>
                <tr>
                    <td><%=cm.getMatricula()%></td>
                    <td><%=cm.getModelo()%></td>
                    <td><%=%></td>
                    <td><%=%></td>
                    <td><%=cm.getTiempoPermitido()%></td>
                </tr>
                <%}%>

            </table>

            <%--              <%@include file="Vista2.jsp"%> --%>

        </div>
        <%--         <%@include file="footer.jsp" %>--%>
    </body>
</html>