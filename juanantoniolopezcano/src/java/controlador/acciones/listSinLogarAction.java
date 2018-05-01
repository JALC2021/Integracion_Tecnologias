/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador.acciones;

import com.opensymphony.xwork2.ActionSupport;
import gestionCitas.Cita;
import gestionCitas.CitasDAO;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author aulas
 */
public class listSinLogarAction extends ActionSupport {

//    String id;
//    String empresa;
//    String urlEmpresa;
//    String horaCita;
//    double precio;
    
    CitasDAO cita = new CitasDAO();
    List<Cita> listaCitas = new ArrayList<Cita>();
    String hora;

//    @Override
//    public void addActionError(String anErrorMessage) {
//        super.addActionError(anErrorMessage); //To change body of generated methods, choose Tools | Templates.
//    }

    public listSinLogarAction() {
    }

    public CitasDAO getCita() {
        return cita;
    }

    public void setCita(CitasDAO cita) {
        this.cita = cita;
    }

    public List<Cita> getListaCitas() {
        return listaCitas;
    }

    public void setListaCitas(List<Cita> listaCitas) {
        this.listaCitas = listaCitas;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    public String buscar(String hora) throws Exception {
        
       
       listaCitas=cita.busquedaCitaPorHora(hora);
      
        //listaCitas=cita.consultaTodasCitas();
        
        return SUCCESS;
    }
    
    @Override
    public String execute() throws Exception {

        listaCitas = cita.consultaTodasCitas();

        return SUCCESS;
    }

}
