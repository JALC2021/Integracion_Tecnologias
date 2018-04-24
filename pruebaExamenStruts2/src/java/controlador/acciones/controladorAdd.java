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
public class controladorAdd extends ActionSupport {

    ReservaDAO reserva = new ReservaDAO();
    List<Tipoanimal> listaTipoAnimal = new ArrayList<Tipoanimal>();
    List<Reservaanimales> listaReservaAnimales = new ArrayList<Reservaanimales>();

    int id;
    String identificador;
    String tipoAnimal;
    String pais;
    int precio;
    String email;

    public controladorAdd() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getIdentificador() {
        return identificador;
    }

    public void setIdentificador(String identificador) {
        this.identificador = identificador;
    }

    public String getTipoAnimal() {
        return tipoAnimal;
    }

    public void setTipoAnimal(String tipoAnimal) {
        this.tipoAnimal = tipoAnimal;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String execute() throws Exception {

//Creo un objeto Reserva animales
        Reservaanimales animal = new Reservaanimales(identificador, tipoAnimal, pais, precio, email);
//Lo añado al DAO
        reserva.addAnimal(animal);
//Devuelvo la lista de animales actualizada
        listaReservaAnimales = reserva.listadoAnimales();

        return SUCCESS;
    }

}
