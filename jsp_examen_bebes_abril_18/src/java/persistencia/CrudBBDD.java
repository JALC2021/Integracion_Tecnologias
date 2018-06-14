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
    
    public Usuario compruebaUsuario(String usuario, String password){
        session=NewHibernateUtil.getSessionFactory().openSession();
        org.hibernate.Transaction tx=session.beginTransaction();
        Query q;
        q=session.createQuery("FROM Usuario u WHERE u.usuario = :usuario AND u.password = :password");
        //SELECT `usuario`,`password` FROM `usuario` WHERE `usuario` = 'jose' AND `password`='jose'
        //q=setString(string, string1);
        return usuario;
    }

}
