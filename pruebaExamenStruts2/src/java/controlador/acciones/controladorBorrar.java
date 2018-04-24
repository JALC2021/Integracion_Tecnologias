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
public class controladorBorrar extends ActionSupport {

    ReservaDAO reserva = new ReservaDAO();
    List<Tipoanimal> listaTipoAnimal = new ArrayList<Tipoanimal>();
    List<Reservaanimales> listaReservaAnimales = new ArrayList<Reservaanimales>();
    int id;

    public controladorBorrar() {
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

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Override
    public String execute() throws Exception {
        
        //elimino del la bbdd el animal mediante el id
        reserva.deleteAnimal(id);
        //devuelvo las dos listas sin el animal borrado
        listaTipoAnimal = reserva.listadoTipoAnimal();
        listaReservaAnimales = reserva.listadoAnimales();

        return SUCCESS;
    }

}
