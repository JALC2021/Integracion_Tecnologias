/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gestionCitas;

import java.sql.SQLException;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author ricardo
 */
public class CitasDAO {
    Session s1=null;
    
    public List<Cita> consultaTodasCitas() throws SQLException{        
        
        s1= HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx=s1.beginTransaction();
        Query q1=s1.createQuery("From Cita");
        List<Cita> lista= q1.list();
        tx.commit();
        
        return lista;
    }
    
    public List<Cita> busquedaCitaPorHora(String hora){
        s1=HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx=s1.beginTransaction();
        Query q1= s1.createQuery("From Cita where horaCita like '"+hora+"%'");        
        List<Cita> listado= q1.list();        
        tx.commit();
        return listado;
    }
    
    public void borrarCita(String id) throws SQLException{
        Cita c=new Cita();
        c.setId(id);
        s1=HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx=s1.beginTransaction();
        s1.delete(c);
        tx.commit();
    }
    
    public void altaCita(Cita c) throws SQLException{
        s1=HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx=s1.beginTransaction();
        s1.save(c);
        tx.commit();        
    }
}
