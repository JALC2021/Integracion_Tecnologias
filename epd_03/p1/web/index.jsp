<%@page import="java.util.ArrayList"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Objects"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!
    /*Modelo*/
    public class cocheModelo {

        private String matricula;
        private String modelo;
        private Calendar horaEntrada;
        private Calendar horaSalida;
        private int tiempoPermitido;

        public cocheModelo() {
        }

        public cocheModelo(String matricula, String modelo, Calendar horaEntrada, Calendar horaSalida, int tiempoPermitido) {
            this.matricula = matricula;
            this.modelo = modelo;
            this.horaEntrada = horaEntrada;
            this.horaSalida = horaSalida;
            this.tiempoPermitido = tiempoPermitido;
        }

        public String getMatricula() {
            return matricula;
        }

        public void setMatricula(String matricula) {
            this.matricula = matricula;
        }

        public String getModelo() {
            return modelo;
        }

        public void setModelo(String modelo) {
            this.modelo = modelo;
        }

        public Calendar getHoraEntrada() {
            return horaEntrada;
        }

        public void setHoraEntrada(Calendar horaEntrada) {
            this.horaEntrada = horaEntrada;
        }

        public Calendar getHoraSalida() {
            return horaSalida;
        }

        public void setHoraSalida(Calendar horaSalida) {

            this.horaSalida = horaSalida;
        }

        public int getTiempoPermitido() {
            return tiempoPermitido;
        }

        public void setTiempoPermitido(int tiempoPermitido) {
            this.tiempoPermitido = tiempoPermitido;
        }

        @Override
        public int hashCode() {
            int hash = 5;
            hash = 29 * hash + Objects.hashCode(this.matricula);
            hash = 29 * hash + Objects.hashCode(this.modelo);
            hash = 29 * hash + Objects.hashCode(this.horaEntrada);
            hash = 29 * hash + Objects.hashCode(this.horaSalida);
            hash = 29 * hash + this.tiempoPermitido;
            return hash;
        }

        @Override
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null) {
                return false;
            }
            if (getClass() != obj.getClass()) {
                return false;
            }
            final cocheModelo other = (cocheModelo) obj;
            if (this.tiempoPermitido != other.tiempoPermitido) {
                return false;
            }
            if (!Objects.equals(this.matricula, other.matricula)) {
                return false;
            }
            if (!Objects.equals(this.modelo, other.modelo)) {
                return false;
            }
            if (!Objects.equals(this.horaEntrada, other.horaEntrada)) {
                return false;
            }
            if (!Objects.equals(this.horaSalida, other.horaSalida)) {
                return false;
            }
            return true;
        }
    }
%>
<%
    /*Controlador*/
    List<cocheModelo> listaCoches = new ArrayList<cocheModelo>();

    //Coche1
    cocheModelo coche1 = new cocheModelo();

    coche1.setMatricula("12784HIH");

    coche1.setModelo("BMW");

    Calendar horaEntradaCoche1 = new GregorianCalendar();
    Calendar horaSalidaCoche1 = new GregorianCalendar();

    horaEntradaCoche1.set(Calendar.HOUR_OF_DAY, 10);
    horaEntradaCoche1.set(Calendar.MINUTE, 05);

    coche1.setHoraEntrada(horaEntradaCoche1);

    coche1.setTiempoPermitido(30);

    listaCoches.add(coche1);

    //Coche2
    cocheModelo coche2 = new cocheModelo();

    coche2.setMatricula("76234AAC");

    coche2.setModelo("Toyota");

    Calendar horaEntradaCoche2 = new GregorianCalendar();
    Calendar horaSalidaCoche2 = new GregorianCalendar();

    horaEntradaCoche2.set(Calendar.HOUR_OF_DAY, 10);
    horaEntradaCoche2.set(Calendar.MINUTE, 07);
    coche2.setHoraEntrada(horaEntradaCoche2);

    horaSalidaCoche2.set(Calendar.HOUR_OF_DAY, 10);
    horaSalidaCoche2.set(Calendar.MINUTE, 35);
    coche2.setHoraSalida(horaSalidaCoche2);

    coche2.setTiempoPermitido(30);

    listaCoches.add(coche2);

    //Coche3
    cocheModelo coche3 = new cocheModelo();

    coche3.setMatricula("32162BAQ");

    coche3.setModelo("Audi");

    Calendar horaEntradaCoche3 = new GregorianCalendar();
    Calendar horaSalidaCoche3 = new GregorianCalendar();

    horaEntradaCoche3.set(Calendar.HOUR_OF_DAY, 10);
    horaEntradaCoche3.set(Calendar.MINUTE, 45);

    coche3.setHoraEntrada(horaEntradaCoche3);

    coche3.setTiempoPermitido(90);

    listaCoches.add(coche3);

    //Coche4
    cocheModelo coche4 = new cocheModelo();

    coche4.setMatricula("87823CDA");

    coche4.setModelo("Mercedes");

    Calendar horaEntradaCoche4 = new GregorianCalendar();
    Calendar horaSalidaCoche4 = new GregorianCalendar();

    horaEntradaCoche4.set(Calendar.HOUR_OF_DAY, 10);
    horaEntradaCoche4.set(Calendar.MINUTE, 46);
    coche4.setHoraEntrada(horaEntradaCoche4);

    horaSalidaCoche4.set(Calendar.HOUR_OF_DAY, 11);
    horaSalidaCoche4.set(Calendar.MINUTE, 05);
    coche4.setHoraSalida(horaSalidaCoche4);

    coche4.setTiempoPermitido(15);

    listaCoches.add(coche4);

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link rel="stylesheet" type="text/css" href="style.css" />
        <title>Epd3_P1</title>
    </head>
    <body>
                    <%--Vista --%>
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
                    for (cocheModelo cm : listaCoches) {
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
