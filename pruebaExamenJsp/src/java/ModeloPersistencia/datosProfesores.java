/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloPersistencia;

import Modelo.HibernateUtil;
import Modelo.Profesor;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author jalc
 */
public class datosProfesores {

    Session session = null;

    public datosProfesores() {
        session = HibernateUtil.getSessionFactory().openSession();
    }

    public List<Profesor> listaProfesores() throws SQLException {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        org.hibernate.Transaction tx = session.beginTransaction();
        Query q;
        q = session.createQuery("from Profesor");
        List<Profesor> l = (List<Profesor>) q.list();
        tx.commit();
        return l;
    }

    public void insertarProfesor(Profesor p) throws SQLException {

        session = HibernateUtil.getSessionFactory().getCurrentSession();
        org.hibernate.Transaction tx = session.beginTransaction();
        session.save(p);
        tx.commit();

    }

    public void actualizarProfesor(Profesor p) throws SQLException {

        session = HibernateUtil.getSessionFactory().getCurrentSession();
        org.hibernate.Transaction tx = session.beginTransaction();
        session.update(p);
        tx.commit();

    }

    public void eliminarProfesor(String dni) throws SQLException {

        session = HibernateUtil.getSessionFactory().getCurrentSession();
        org.hibernate.Transaction tx = session.beginTransaction();
        //session.delete(p);
        Query q;
        q = session.createQuery("DELETE Profesor WHERE dni = :dni");
        q.setString("dni", dni);
        q.executeUpdate();
        tx.commit();
    }

    public List<Profesor> listarMayor2016(Date fechaAlta) throws SQLException {

        session = HibernateUtil.getSessionFactory().getCurrentSession();
        org.hibernate.Transaction tx = session.beginTransaction();
        Query q;
        q = session.createQuery("SELECT nombreCualquiera FROM Profesor nombreCualquiera WHERE nombreCualquiera.fechaAlta >= :fechaAlta");
        q.setDate("fechaAlta", fechaAlta);

        List<Profesor> l = new ArrayList<Profesor>();
        l = q.list();
        tx.commit();

        return l;
    }

}
