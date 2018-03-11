<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import=" aparcamiento.cocheModelo" %>
<%@page import=" aparcamiento.parkingControlador" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.List"%>
<%! List<cocheModelo> cochesAparcados = parkingControlador.cochesZonaAzul();%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link rel="stylesheet" type="text/css" href="style.css" />
        <title>Epd3_Ej1</title>
    </head>
    <body>
        <header><h1>Aparcamiento Zona Azul</h1></header>
        <div class="container">

            <table>
                <tr>
                    <th>Matricula</th>
                    <th>Modelo</th>
                    <th>Hora de entrada</th>
                    <th>Hora de salida</th>
                    <th>Tiempo permitido</th>
                </tr>
                <%
                    for (cocheModelo cm : cochesAparcados) {
                        //Matricula
                        String matricula = cm.getMatricula();
                        //Modelo
                        String modelo = cm.getModelo();
                        //Hora entrada y salida
                        Calendar horaEntrada = cm.getHoraEntrada();
                        Calendar horaSalida = cm.getHoraSalida();
                        //Formato fecha
                        SimpleDateFormat formatoHora = new SimpleDateFormat("HH:mm");
                        String HoraEntrada = formatoHora.format(horaEntrada.getTime());
                        String HoraSalida = horaSalida == null ? "--" : formatoHora.format(horaSalida.getTime());
                        //Tiempo permitido
                        int tiempoPermitido = cm.getTiempoPermitido();
                        String TiempoPermitido = String.valueOf(tiempoPermitido);
                %>
                <tr>
                    <td><%=matricula%></td>
                    <td><%=modelo%></td>
                    <td><%=HoraEntrada%></td>
                    <td><%=HoraSalida%></td>
                    <td><%=TiempoPermitido%></td>
                </tr>
                <%}%>

            </table>
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>
