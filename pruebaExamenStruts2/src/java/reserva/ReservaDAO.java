/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package reserva;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author ricardo
 */
public class ReservaDAO {
    
    Session s1=null;

    public ReservaDAO() {
    }
    
    public List<Reservaanimales> listadoAnimales(){        
        s1=HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx=s1.beginTransaction();
        Query q=s1.createQuery("From Reservaanimales");
        List lista= (List<Reservaanimales>)q.list();
        tx.commit();
        return lista;
    }
    
    public List<Tipoanimal> listadoTipoAnimal(){        
        s1=HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx=s1.beginTransaction();
        Query q=s1.createQuery("From Tipoanimal");
        List lista= (List<Tipoanimal>)q.list();
        tx.commit();
        return lista;
    }
    
    
    public List<Reservaanimales> listadoAnimalesFiltro(String tipoAnimal){        
        s1=HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx=s1.beginTransaction();
        Query q=s1.createQuery("From Reservaanimales where tipoAnimal='"+tipoAnimal+"'");
        List lista= (List<Reservaanimales>)q.list();
        tx.commit();
        return lista;
    }
    
    public void addAnimal(Reservaanimales r) {
        s1=HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s1.beginTransaction();
        s1.save(r);
        tx.commit();
    }
    
    public Reservaanimales unAnimal(int id){
        s1=HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx=s1.beginTransaction();
        Query q=s1.createQuery("From Reservaanimales where id='"+id+"'");
        Reservaanimales a1= (Reservaanimales)q.uniqueResult();
        tx.commit();
        return a1;
    }
    
    public void deleteAnimal(int id) {
        Reservaanimales a1=unAnimal(id);
        s1=HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx=s1.beginTransaction();
        s1.delete(a1);
        tx.commit();
    }
}
