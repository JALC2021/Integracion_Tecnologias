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
            
            <%@include file="enunciado.jsp"%>
            
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
