

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="org.apache.jasper.tagplugins.jstl.ForEach"%>
<%@page import="Entity.Pelicula"%>
<%@page import="javax.ws.rs.core.GenericType"%>
<%@page import="java.util.List"%>
<%@page import="DAO.NewJerseyClientPelicula"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            NewJerseyClientPelicula p1 = new NewJerseyClientPelicula();
            GenericType<List<Pelicula>> lista = new GenericType<List<Pelicula>>() {};
            List<Pelicula> listaPeliculas = p1.findAll_XML(lista);

            for (Pelicula p : listaPeliculas) {%>

        <h3><%=p.getId()%></h3> 
        <h3><%=p.getNombre()%></h3>
        <h3><%=p.getFechaEstreno()%></h3>
        <h3><%=p.getFechaVideo()%></h3>
        <h3><%=p.getIdioma()%></h3>
        <h3><%=p.getPais()%></h3>

        <%}

            Pelicula p2 = new Pelicula();
            p2.setNombre("La venganza 2");

            Date fechaEstreno = new Date();
            Date fechaVideo = new Date();
            p2.setFechaEstreno(fechaEstreno);
            p2.setFechaVideo(fechaVideo);

            p2.setIdioma("Español");
            p2.setPais("España");

            p1.create_XML(p2);
            listaPeliculas = p1.findAll_XML(lista);

//            p2.setIdioma("Aleman");
//            
//            p1.edit_XML(p2,Integer.toString(p2.getId()));
//              listaPeliculas=p1.findAll_XML(lista);
//String st=String.valueOf(p2.getId());
//String str=Integer.toString(p2.getId());
//out.print(str);
// p1.remove(String.valueOf(p2.getId()));
            p1.close();


        %>


    </body>
</html>
