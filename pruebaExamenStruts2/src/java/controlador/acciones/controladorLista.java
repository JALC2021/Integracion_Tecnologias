/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador.acciones;

import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.List;
import reserva.ReservaDAO;
import reserva.Reservaanimales;
import reserva.Tipoanimal;

/**
 *
 * @author jalc
 */
public class controladorLista extends ActionSupport {

    ReservaDAO reserva = new ReservaDAO();
    List<Tipoanimal> listaTipoAnimal = new ArrayList<Tipoanimal>();
    List<Reservaanimales> listaReservaAnimales = new ArrayList<Reservaanimales>();
    String tipoAnimal;

    public controladorLista() {
    }

    public ReservaDAO getReserva() {
        return reserva;
    }

    public void setReserva(ReservaDAO reserva) {
        this.reserva = reserva;
    }

    public List<Tipoanimal> getListaTipoAnimal() {
        return listaTipoAnimal;
    }

    public void setListaTipoAnimal(List<Tipoanimal> listaTipoAnimal) {
        this.listaTipoAnimal = listaTipoAnimal;
    }

    public List<Reservaanimales> getListaReservaAnimales() {
        return listaReservaAnimales;
    }

    public void setListaReservaAnimales(List<Reservaanimales> listaReservaAnimales) {
        this.listaReservaAnimales = listaReservaAnimales;
    }

    public String getTipoAnimal() {
        return tipoAnimal;
    }

    public void setTipoAnimal(String tipoAnimal) {
        this.tipoAnimal = tipoAnimal;
    }

    public String filtroAnimales() throws Exception {
        listaReservaAnimales = reserva.listadoAnimalesFiltro(tipoAnimal);
        listaTipoAnimal = reserva.listadoTipoAnimal();
        return SUCCESS;
    }

    @Override
    public String execute() throws Exception {
        listaTipoAnimal = reserva.listadoTipoAnimal();
        listaReservaAnimales = reserva.listadoAnimales();
        return SUCCESS;
    }

}
