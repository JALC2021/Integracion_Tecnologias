<%-- 
    Document   : index
    Created on : 05-feb-2018, 18:51:36
    Author     : jalc
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>


<%--declaro las variables--%>
<%!
    Calendar calendar = Calendar.getInstance();
    SimpleDateFormat month_date = new SimpleDateFormat("MMMM");
    String mes = month_date.format(calendar.getTime());
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Epd01_Ej1</title>
    </head>
    <body>

        <section>
            <h2>EJ1 (30 mins.)</h2>
            <article>
                <p style="text-align: justify">Mostrar una salida formateada de la calendar en la que se ejecuta la página JSP junto con un saludo que dependerá de la franja horaria en la que estemos. Dicho saludo será “Buenos días” desde las 5:00 hasta las 11:59, “Buenas tardes” desde las 12:00 hasta las 20:59 y “Buenas noches” desde las 21:00 hasta las 4:59. Por ejemplo, si ejecuta el JSP a las 10:35, la salida será “Buenos días, hoy es 27 de Enero de 2011”. Use la clase Calendar de Java.</p>
            </article>

            <article>
                <%
                    if (calendar.get(Calendar.HOUR_OF_DAY) >= 5 && calendar.get(Calendar.HOUR_OF_DAY) <= 11.59) {

                %><p>Buenos d&iacute;as, hoy es&nbsp;<%=calendar.get(Calendar.DAY_OF_MONTH)%>&nbsp;de&nbsp;<%=mes%>&nbsp;de&nbsp;<%=calendar.get(Calendar.YEAR)%>&#46;</p><%

                } else if (calendar.get(Calendar.HOUR_OF_DAY) >= 12 && calendar.get(Calendar.HOUR_OF_DAY) <= 20.59) {

                %><p>Buenas tardes, hoy es&nbsp;<%=calendar.get(Calendar.DAY_OF_MONTH)%>&nbsp;de&nbsp;<%=mes%>&nbsp;de&nbsp;<%=calendar.get(Calendar.YEAR)%>&#46;</p><%

                } else {

                %><p>Buenos noches, hoy es&nbsp;<%=calendar.get(Calendar.DAY_OF_MONTH)%>&nbsp;de&nbsp;<%=mes%>&nbsp;de&nbsp;<%=calendar.get(Calendar.YEAR)%>&#46;</p><%

                    }

                %>
            </article>

        </section>

        <%@include file="footer.jsp" %>

    </body>
</html>
