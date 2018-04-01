/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloPersistencia;

import Modelo.HibernateUtil;
import Modelo.Profesor;
import java.sql.SQLException;
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
        session = HibernateUtil.getSessionFactory().openSession();
        org.hibernate.Transaction tx = session.beginTransaction();
        Query q = session.createQuery("from profesor");
        List<Profesor> l = q.list();
        tx.commit();
        return l;
    }

}
