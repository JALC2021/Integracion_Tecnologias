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
public class addAction extends ActionSupport {

    String id;
    String empresa;
    String urlEmpresa;
    String horaCita;
    double precio;

    CitasDAO cita = new CitasDAO();
    List<Cita> listaCitas = new ArrayList<Cita>();

    public addAction(String id, String empresa, String urlEmpresa, String horaCita, double precio) {
        this.id = id;
        this.empresa = empresa;
        this.urlEmpresa = urlEmpresa;
        this.horaCita = horaCita;
        this.precio = precio;
    }


    public addAction() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getEmpresa() {
        return empresa;
    }

    public void setEmpresa(String empresa) {
        this.empresa = empresa;
    }

    public String getUrlEmpresa() {
        return urlEmpresa;
    }

    public void setUrlEmpresa(String urlEmpresa) {
        this.urlEmpresa = urlEmpresa;
    }

    public String getHoraCita() {
        return horaCita;
    }

    public void setHoraCita(String horaCita) {
        this.horaCita = horaCita;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
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

   

    @Override
    public String execute() throws Exception {

        Cita c = new Cita(id, empresa, urlEmpresa, horaCita, precio);
        cita.altaCita(c);
        listaCitas = cita.consultaTodasCitas();

        return SUCCESS;
    }

}
