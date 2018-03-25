/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo.persistencia;

import Modelo.Coche;
import Modelo.NewHibernateUtil;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import org.hibernate.Query;
import org.hibernate.Session;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Transaction;

public class DatosParking {

    Session session = null;

    public DatosParking() {
        session = NewHibernateUtil.getSessionFactory().openSession();
    }

    public List<Coche> cochesZonaAzul() throws SQLException {
        session = NewHibernateUtil.getSessionFactory().getCurrentSession();
        org.hibernate.Transaction tx = session.beginTransaction();
        Query q;
        q = session.createQuery("from Coche");
        List<Coche> cochesAparcados = (List<Coche>) q.list();
        tx.commit();

        return cochesAparcados;

    }

    public void actualiza(Coche p0) throws SQLException {
        session = NewHibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            session.update(p0);
            tx.commit();
        } catch (HibernateException e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        }
    }

    public List<Coche> vehiculosExceden(boolean opcion) throws SQLException {
        List<Coche> listaCochesExceden = new ArrayList<Coche>();
        List<Coche> listaCochesNoExceden = new ArrayList<Coche>();

        for (Coche cm : cochesZonaAzul()) {
            //Hora entrada y salida
            SimpleDateFormat formatoHora = new SimpleDateFormat("HH:mm");
            Date horaEntrada = cm.getHoraEntrada();
            //String HoraEntrada = formatoHora.format(horaEntrada.getTime());

            int diferencia = -1;
            String HoraSalida = "--";
            Date horaSalida = cm.getHoraSalida();

            if (horaSalida != null) {
                Date horaSalida1 = cm.getHoraSalida();
                HoraSalida = formatoHora.format(horaSalida.getTime());
                long minutosHoraEntrada = horaEntrada.getTime();
                long minutosHoraSalida = horaSalida1.getTime();
                diferencia = (int) ((minutosHoraSalida - minutosHoraEntrada) / (1000 * 60));

            } else {
                HoraSalida = "--";
                diferencia = -1;
            }
            //Tiempo permitido
            int tiempoPermitido = cm.getTiempoPermitido();
            //String TiempoPermitido = String.valueOf(tiempoPermitido);

            cm.setHoraEntrada(horaEntrada);
            cm.setHoraSalida(horaSalida);

            if (diferencia > tiempoPermitido) {

                listaCochesExceden.add(cm);

            } else {
                listaCochesNoExceden.add(cm);
            }

        }

        if (opcion == true) {
            return listaCochesExceden;
        } else {
            return listaCochesNoExceden;
        }
    }

    public List<Coche> busquedaCoches(String matriculaRecibida) throws SQLException {

        List<Coche> listaCochesMatricula = new ArrayList<Coche>();

        for (Coche cm : cochesZonaAzul()) {
            //Hora entrada y salida
            SimpleDateFormat formatoHora = new SimpleDateFormat("HH:mm");
            Date horaEntrada = cm.getHoraEntrada();
            //String HoraEntrada = formatoHora.format(horaEntrada.getTime());

            int diferencia = -1;
            String HoraSalida = "--";
            Date horaSalida = cm.getHoraSalida();

            if (horaSalida != null) {
                Date horaSalida1 = cm.getHoraSalida();
                HoraSalida = formatoHora.format(horaSalida.getTime());
                long minutosHoraEntrada = horaEntrada.getTime();
                long minutosHoraSalida = horaSalida1.getTime();
                diferencia = (int) ((minutosHoraSalida - minutosHoraEntrada) / (1000 * 60));

            } else {
                HoraSalida = "--";
                diferencia = -1;
            }
            //Tiempo permitido
            int tiempoPermitido = cm.getTiempoPermitido();
            //String TiempoPermitido = String.valueOf(tiempoPermitido);

            cm.setHoraEntrada(horaEntrada);
            cm.setHoraSalida(horaSalida);

            if (cm.getMatricula().startsWith(matriculaRecibida)) {

                listaCochesMatricula.add(cm);
            }
        }
        return listaCochesMatricula;
    }

    public List<Coche> busquedaCochesAparcados() {

        session = NewHibernateUtil.getSessionFactory().getCurrentSession();
        org.hibernate.Transaction tx = session.beginTransaction();
        Query q;
        q = session.createQuery("from Coche where hora_salida is null");
        List<Coche> cochesAparcados = (List<Coche>) q.list();
        tx.commit();

        return cochesAparcados;
    }
}
