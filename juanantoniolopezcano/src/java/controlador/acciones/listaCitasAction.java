/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador.acciones;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import gestionCitas.Cita;
import gestionCitas.CitasDAO;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 *
 * @author jalc
 */
public class listaCitasAction extends ActionSupport {

    private String id;
    private String empresa;
    private String urlEmpresa;
    private String horaCita;
    private Double precio;

    CitasDAO cita = new CitasDAO();
    List<Cita> listaCitas = new ArrayList<Cita>();

    /*variables para la sesion*/
    private String usuario;
    private String contrasenia;
    private String nombreUsuario;
    Map<String, Object> session = ActionContext.getContext().getSession();

    public listaCitasAction() {
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

    public Double getPrecio() {
        return precio;
    }

    public void setPrecio(Double precio) {
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

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getContrasenia() {
        return contrasenia;
    }

    public void setContrasenia(String contrasenia) {
        this.contrasenia = contrasenia;
    }

    public String getNombreUsuario() {
        return nombreUsuario;
    }

    public void setNombreUsuario(String nombreUsuario) {
        this.nombreUsuario = nombreUsuario;
    }

    public Map<String, Object> getSession() {
        return session;
    }

    public void setSession(Map<String, Object> session) {
        this.session = session;
    }

    public String buscar() throws Exception {

        listaCitas = cita.busquedaCitaPorHora(horaCita);

        //listaCitas=cita.consultaTodasCitas();
        return SUCCESS;
    }

    public String eliminarCita() throws Exception {
        cita.borrarCita(id);
        listaCitas = cita.consultaTodasCitas();
        return SUCCESS;
    }

    @Override
    public String execute() throws Exception {

        listaCitas = cita.consultaTodasCitas();

        return SUCCESS;
    }

    public String logarse() throws Exception {

        nombreUsuario = (String) session.get("nombreUsuario");
        session.put("nombreUsuario", nombreUsuario);
        execute();
        return SUCCESS;
    }

    public String desLogarse() throws Exception {
        /*no funciona por eso lo comento, no me mantiene la variable en toda la sesion*/
//        session.clear();
//       session.remove("usuario",usu);
//        session.remove("usuario");
        execute();
        return SUCCESS;
    }

}
