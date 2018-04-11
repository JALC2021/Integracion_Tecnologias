/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Acciones;


import com.opensymphony.xwork2.ActionSupport;
import java.util.Date;
import java.util.Objects;


/**
 *
 * @author jalc
 */
public class datosUsuario extends ActionSupport{

//    <s:textfield key="" name="dni" />
//            <s:textfield key="Nombre" name="nombre" />
//            <s:textfield key="Apellidos" name="apellidos" />
//            <s:password  key="Contraseña" name="contrasenya" />
//            <s:textfield type="email" key="Email" name="email" />
//            <s:date name="fechaNacimiento" format="dd/MM/yyyy" />
//            <s:textfield key="Numero de Telefono" name="numeroTelefono" type="number"/>
//            <s:textarea key="Cuentanos mas sobre ti..." name="comentario" />
    
    private String nombre;
    private String apellidos;
    private String contrasenya;
    private String email;
    private Date fechaNacimiento;
    private int numeroTelefono;
    private String comentario;

    public datosUsuario() {
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

    public String getContrasenya() {
        return contrasenya;
    }

    public void setContrasenya(String contrasenya) {
        this.contrasenya = contrasenya;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getFechaNacimiento() {
        return fechaNacimiento;
    }

    public void setFechaNacimiento(Date fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }

    public int getNumeroTelefono() {
        return numeroTelefono;
    }

    public void setNumeroTelefono(int numeroTelefono) {
        this.numeroTelefono = numeroTelefono;
    }

    public String getComentario() {
        return comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }

    @Override
    public int hashCode() {
        int hash = 3;
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final datosUsuario other = (datosUsuario) obj;
        if (this.numeroTelefono != other.numeroTelefono) {
            return false;
        }
        if (!Objects.equals(this.nombre, other.nombre)) {
            return false;
        }
        if (!Objects.equals(this.apellidos, other.apellidos)) {
            return false;
        }
        if (!Objects.equals(this.contrasenya, other.contrasenya)) {
            return false;
        }
        if (!Objects.equals(this.email, other.email)) {
            return false;
        }
        if (!Objects.equals(this.comentario, other.comentario)) {
            return false;
        }
        if (!Objects.equals(this.fechaNacimiento, other.fechaNacimiento)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "datosUsuario{" + "nombre=" + nombre + ", apellidos=" + apellidos + ", contrasenya=" + contrasenya + ", email=" + email + ", fechaNacimiento=" + fechaNacimiento + ", numeroTelefono=" + numeroTelefono + ", comentario=" + comentario + '}';
    }

}
