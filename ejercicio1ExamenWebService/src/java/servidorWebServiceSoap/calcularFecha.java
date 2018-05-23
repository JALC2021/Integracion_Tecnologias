/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servidorWebServiceSoap;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author jalc
 */
@WebService(serviceName = "calcularFecha")
public class calcularFecha {

    /**
     * This is a sample web service operation
     */
    @WebMethod(operationName = "comprobarFecha")

    public String comprobarFecha(@WebParam(name = "fecha") String fecha) throws ParseException {
        //Transformamos el input de String a Date
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd-M-yyyy");
        Date newDate = new Date();
        newDate = dateFormat.parse(fecha);

        //Calculamos el dia de la semana
        GregorianCalendar cal = new GregorianCalendar();
        cal.setTime(newDate);
        int diaSemanaEntero = cal.get(Calendar.DAY_OF_WEEK);

        String diaSemana = "";

        switch (diaSemanaEntero) {
            case 1:
                diaSemana = "Domingo";
                break;
            case 2:
                diaSemana = "Lunes";
                break;
            case 3:
                diaSemana = "Martes";
                break;
            case 4:
                diaSemana = "Miercoles";
                break;
            case 5:
                diaSemana = "Jueves";
                break;
            case 6:
                diaSemana = "Viernes";
                break;
            case 7:
                diaSemana = "Sabado";
                break;

        }

        return diaSemana;
    }

    @WebMethod(operationName = "comprobarFechayDia")

    public Boolean comprobarFechayDia(@WebParam(name = "fecha") String fecha, @WebParam(name = "dia") String dia) throws ParseException {

        boolean ok = false;
        String diaSemana = comprobarFecha(fecha);
        if (diaSemana.equalsIgnoreCase(dia)) {

            ok = true;

        } else {
            ok = false;

        }

        return ok;

    }
}
