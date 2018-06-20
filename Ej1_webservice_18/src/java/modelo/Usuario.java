/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author jalc
 */
public class Usuario {
    
    private String dni;
    private int cantidad;

    public Usuario(String dni, int cantidad) {
        this.dni = dni;
        this.cantidad = cantidad;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    @Override
    public String toString() {
        return "Usuario{" + "dni=" + dni + ", cantidad=" + cantidad + '}';
    }
    
    
    
}
