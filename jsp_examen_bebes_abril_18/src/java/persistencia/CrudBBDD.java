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
        //creamos la lista a devolver en la consulta y añadimos la query a la lista
        List<Bebe> listaBebes = q.list();
        //relizamos la transaccion
        tx.commit();
        //retornamos la lista
        return listaBebes;

    }

    //comprobamos usuario y contraseña
    public Usuario compruebaUsuario(String usuario, String password) throws SQLException {
        //siempre igual
        session = NewHibernateUtil.getSessionFactory().openSession();
        //siempre igual
        org.hibernate.Transaction tx = session.beginTransaction();
        //so cuando hacemos una query
        Query q;
        //q = session.createQuery("from Usuario u where u.usuario ='" + usuario + "' and u.password ='" + password + "'");
        //apuntar la query!!!!!
        q = session.createQuery("from Usuario u where u.usuario =:usuario and u.password =:password");
        //injection sql
        q.setString("usuario", usuario);
        //injection sql
        q.setString("password", password);
        //devuelve un unico usuario
        Usuario usuarioBBDD = (Usuario) q.uniqueResult();
        tx.commit();
        return usuarioBBDD;
    }

    //metodo para el filtradoque queramos, nos devuelve una lista
    public List<Bebe> sigueIncubadora() throws SQLException {
        session = NewHibernateUtil.getSessionFactory().openSession();
        org.hibernate.Transaction tx = session.beginTransaction();
        Query q;
        q = session.createQuery("from Bebe where horaSalidaIncubadora = NULL");
        List<Bebe> listaIncubadora = q.list();
        tx.commit();
        return listaIncubadora;
    }

    //insertamos un nuevo elemento
    public void addBebe(Bebe b) throws SQLException {
        session = NewHibernateUtil.getSessionFactory().openSession();
        org.hibernate.Transaction tx = session.beginTransaction();
        //en insert no hace falta query ya q ue recogemos los datos en el controlador.
        session.save(b);
        tx.commit();
    }

    public void deleteBebe(String dni) throws SQLException {
        session = NewHibernateUtil.getSessionFactory().openSession();
        org.hibernate.Transaction tx = session.beginTransaction();
        Query q;
        q = session.createQuery("delete Bebe where dni = :dni");
        //injection sql
        q.setString("dni", dni);
        //ejecuta la actualizacion
        q.executeUpdate();
        tx.commit();
    }

}
