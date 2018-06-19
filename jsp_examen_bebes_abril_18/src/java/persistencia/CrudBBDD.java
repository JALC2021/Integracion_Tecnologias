/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistencia;

import java.sql.SQLException;
import java.util.List;
import modelo.Bebe;
import modelo.NewHibernateUtil;
import modelo.Usuario;
import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author jalc
 */
public class CrudBBDD {

    //creo una session a nulo
    Session session = null;

    //creo un constructor vacio igualando la session a la clase hibernateutil
    public CrudBBDD() {

        session = NewHibernateUtil.getSessionFactory().openSession();
    }

    //creo la lista que muestra lo que hay en la base de datos
    public List<Bebe> ListaBebes() throws SQLException {
        //igualo la sesion a lo mismo que el constructor pero con getCurretnSession !!OJO 
        //si no funciona con getCurrentSession ponemos openSession();
        session = NewHibernateUtil.getSessionFactory().openSession();
        //esta linea es asi siempre
        org.hibernate.Transaction tx = session.beginTransaction();
        //creo la query
        Query q;
        //realizo la query !!!! cuaidado con las mayuscula, si en la bbdd esta en misnucula ponemos la primera en mayuscula y al contrario
        q = session.createQuery("from Bebe");
        //creamos la lista a devolver en la consulta;
        List<Bebe> listaBebes = q.list();
        //relizamos la transaccion
        tx.commit();
        //retornamos la lista
        return listaBebes;

    }

    public Usuario compruebaUsuario(String usuario, String password) throws SQLException {
        session = NewHibernateUtil.getSessionFactory().openSession();
        org.hibernate.Transaction tx = session.beginTransaction();
        Query q;
        //q = session.createQuery("from Usuario u where u.usuario ='" + usuario + "' and u.password ='" + password + "'");
        q = session.createQuery("from Usuario u where u.usuario =:usuario and u.password =:password");
        q.setString("usuario", usuario);
        q.setString("password", password);
        Usuario usuarioBBDD = (Usuario) q.uniqueResult();
        tx.commit();
        return usuarioBBDD;
    }

    public List<Bebe> sigueIncubadora() throws SQLException {
        session = NewHibernateUtil.getSessionFactory().openSession();
        org.hibernate.Transaction tx = session.beginTransaction();
        Query q;
        q = session.createQuery("from Bebe where horaSalidaIncubadora = NULL");
        List<Bebe> listaIncubadora = q.list();
        tx.commit();
        return listaIncubadora;
    }

    public void addBebe(Bebe b)throws SQLException{
        session=NewHibernateUtil.getSessionFactory().openSession();
        org.hibernate.Transaction tx=session.beginTransaction();
        session.save(b);
        tx.commit();
    }
    public void deleteBebe(String dni) throws SQLException {
        session = NewHibernateUtil.getSessionFactory().openSession();
        org.hibernate.Transaction tx = session.beginTransaction();
        Query q;
        q = session.createQuery("delete Bebe where dni = :dni");
        q.setString("dni", dni);
        q.executeUpdate();
        tx.commit();
    }

}
