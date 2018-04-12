/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Actions;

import com.opensymphony.xwork2.ActionSupport;
import java.util.Date;


/**
 *
 * @author jalc
 */
public class LoginCheck extends ActionSupport {

    private String nombre;
    private String apellidos;
    private String password;
    private String email;
    private int edad;
    private String telefono;
    private String comentario;

    public LoginCheck() {
    }

    public LoginCheck(String nombre, String apellidos, String password, String email, int edad, String telefono, String comentario) {
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.password = password;
        this.email = email;
        this.edad = edad;
        this.telefono = telefono;
        this.comentario = comentario;
    }

      @Override
    public String execute() throws Exception {

        return SUCCESS;

    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getComentario() {
        return comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }

}
