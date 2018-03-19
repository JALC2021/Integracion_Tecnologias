/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo.persistencia;

import Modelo.Coche;
import Modelo.NewHibernateUtil;
import java.sql.SQLException;
import org.hibernate.Query;
import org.hibernate.Session;
import java.util.List;



public class DatosParking {

    Session session = null;

    public DatosParking() {

    }

    public  List<Coche> cochesZonaAzul() throws SQLException {
        session = NewHibernateUtil.getSessionFactory().getCurrentSession();
        org.hibernate.Transaction tx = session.beginTransaction();
        Query q;
        q = session.createQuery("from Coche");
        List cochesAparcados = (List<Coche>) q.list();
        tx.commit();

        return cochesAparcados;

    }

//    public static List<Coche> vehiculosExceden(boolean opcion) {
//
//        List<Coche> cochesAparcados = cochesZonaAzul();
//        List<Coche> listaCochesExceden = new ArrayList<Coche>();
//        List<Coche> listaCochesNoExceden = new ArrayList<Coche>();
//
//        for (Coche cm : cochesAparcados) {
//
//            //Hora entrada y salida
//            SimpleDateFormat formatoHora = new SimpleDateFormat("HH:mm");
//            Date horaEntrada = cm.getHoraEntrada().getTime();
//            String HoraEntrada = formatoHora.format(horaEntrada.getTime());
//
//            int diferencia = -1;
//
//            String HoraSalida = "--";
//            Calendar horaSalida = cm.getHoraSalida();
//
//            if (horaSalida != null) {
//                Date horaSalida1 = cm.getHoraSalida().getTime();
//                HoraSalida = formatoHora.format(horaSalida.getTime());
//                long minutosHoraEntrada = horaEntrada.getTime();
//                long minutosHoraSalida = horaSalida1.getTime();
//                diferencia = (int) ((minutosHoraSalida - minutosHoraEntrada) / (1000 * 60));
//
//            } else {
//                HoraSalida = "--";
//                diferencia = -1;
//            }
//            //Tiempo permitido
//            int tiempoPermitido = cm.getTiempoPermitido();
//            String TiempoPermitido = String.valueOf(tiempoPermitido);
//
//            cm.setHoraEntradaConFormato(HoraEntrada);
//            cm.setHoraSalidaConFormato(HoraSalida);
//
//            if (diferencia > tiempoPermitido) {
//
//                listaCochesExceden.add(cm);
//
//            } else {
//                listaCochesNoExceden.add(cm);
//            }
//
//        }
//        if (opcion == true) {
//            return listaCochesExceden;
//        } else {
//            return listaCochesNoExceden;
//        }
//    }
//
//    public static List<Coche> busquedaCoches(String matriculaRecibida) {
//
//        List<Coche> cochesAparcados = cochesZonaAzul();
//        List<Coche> listaCochesMatricula = new ArrayList<Coche>();
//
//        for (Coche cm : cochesAparcados) {
//
//            //Hora entrada y salida
//            SimpleDateFormat formatoHora = new SimpleDateFormat("HH:mm");
//            Date horaEntrada = cm.getHoraEntrada().getTime();
//            String HoraEntrada = formatoHora.format(horaEntrada.getTime());
//
//            int diferencia = -1;
//            String HoraSalida = "";
//            Calendar horaSalida = cm.getHoraSalida();
//
//            if (horaSalida != null) {
//                Date horaSalida1 = cm.getHoraSalida().getTime();
//                HoraSalida = formatoHora.format(horaSalida.getTime());
//                long minutosHoraEntrada = horaEntrada.getTime();
//                long minutosHoraSalida = horaSalida1.getTime();
//                diferencia = (int) ((minutosHoraSalida - minutosHoraEntrada) / (1000 * 60));
//
//            } else {
//                HoraSalida = "--";
//                diferencia = -1;
//            }
//            //Tiempo permitido
//            int tiempoPermitido = cm.getTiempoPermitido();
//            String TiempoPermitido = String.valueOf(tiempoPermitido);
//
//            cm.setHoraEntradaConFormato(HoraEntrada);
//            cm.setHoraSalidaConFormato(HoraSalida);
//
//            if (cm.getMatricula().startsWith(matriculaRecibida)) {
//
//                listaCochesMatricula.add(cm);
//
//            }
//
//        }
//        return listaCochesMatricula;
//    }
//
//    public static List<Coche> busquedaCochesAparcados() {
//
//        List<Coche> cochesAparcados = cochesZonaAzul();
//
//        List<Coche> listaCochesAparcados = new ArrayList<Coche>();
//
//        for (Coche cm : cochesAparcados) {
//
//            //Hora entrada y salida
//            SimpleDateFormat formatoHora = new SimpleDateFormat("HH:mm");
//            Date horaEntrada = cm.getHoraEntrada().getTime();
//            String HoraEntrada = formatoHora.format(horaEntrada.getTime());
//
//            int diferencia = -1;
//            String HoraSalida = "";
//            Calendar horaSalida = cm.getHoraSalida();
//
//            if (horaSalida != null) {
//                Date horaSalida1 = cm.getHoraSalida().getTime();
//                HoraSalida = formatoHora.format(horaSalida.getTime());
//                long minutosHoraEntrada = horaEntrada.getTime();
//                long minutosHoraSalida = horaSalida1.getTime();
//                diferencia = (int) ((minutosHoraSalida - minutosHoraEntrada) / (1000 * 60));
//
//            } else {
//                HoraSalida = "--";
//                diferencia = -1;
//            }
//            //Tiempo permitido
//            int tiempoPermitido = cm.getTiempoPermitido();
//            String TiempoPermitido = String.valueOf(tiempoPermitido);
//
//            cm.setHoraEntradaConFormato(HoraEntrada);
//            cm.setHoraSalidaConFormato(HoraSalida);
//
//            if (HoraSalida == "--") {
//                listaCochesAparcados.add(cm);
//            }
//
//        }
//        return listaCochesAparcados;
//    }

}