/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Persistencia;

import Modelo.Profesor;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import org.apache.tomcat.dbcp.dbcp2.DriverManagerConnectionFactory;

/**
 *
 * @author jalc
 */
public class DatosProfesor {

    private static final String controlador = "com.mysql.jdbc.Driver";
    private static final String url = "jdbc:mysql://localhost/pruebaEvaluable1It";
    private static final String usuario = "root";
    private static final String pass = "";

    static {
        try {
            Class.forName(controlador);
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("Error al cargar el driver" + e);

        }
    }

    public static Profesor ResultSetToProfesor(ResultSet resultado) throws SQLException {

        Profesor profesor = new Profesor();
        profesor.setApellidos(resultado.getString("dni"));
        profesor.setNombre(resultado.getString("nombre"));
        profesor.setApellidos(resultado.getString("apellidos"));
        profesor.setFechaAlta(resultado.getDate("fechaAlta"));
        profesor.setApellidos(resultado.getString("departamento"));

        return profesor;
    }

    public static List<Profesor> listaProfesor() throws SQLException {
        List<Profesor> listaProfesor = new ArrayList<Profesor>();

        Profesor p = new Profesor();
        Connection conexion = DriverManager.getConnection(url, usuario, pass);

        Statement solicitud = (Statement) conexion.createStatement();

        ResultSet query = solicitud.executeQuery("SELECT * FROM profesor");
        while (query.next()) {
            p = Persistencia.DatosProfesor.ResultSetToProfesor(query);
            listaProfesor.add(p);

        }

        query.close();
        solicitud.close();
        conexion.close();

        return listaProfesor;

    }

}
