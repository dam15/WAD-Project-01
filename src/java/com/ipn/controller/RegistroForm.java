/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ipn.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author Diego
 */
public class RegistroForm extends org.apache.struts.action.ActionForm {
    
    private String nombreUsuario;
    private String claveUsuario;
    private String claveUsuarioConf;
    private String nombre;
    private String paterno;
    private String materno;
    private String email;
    
    //error message
    private String error;

    public String getError() {
        return error;
    }

    public void setError() {
        this.error = "<span style='color:red'>Algun campo quedo faltante o las contraseñas no coinciden</span>";
    }

   

    /**
     *
     */
    public RegistroForm() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * This is the action called from the Struts framework.
     *
     * @param mapping The ActionMapping used to select this instance.
     * @param request The HTTP Request we are processing.
     * @return
     */
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
        if (getNombreUsuario()== null || getNombreUsuario().length() < 1) {
            errors.add("name", new ActionMessage("error.name.required"));
            // TODO: add 'error.name.required' key to your resources
        }
        if(getClaveUsuario()==null || getClaveUsuario().length()<1)
        {
            errors.add("password",new ActionMessage("Se requiere la contraseña"));
        }
        return errors;
    }

    /**
     * @return the nombreUsuario
     */
    public String getNombreUsuario() {
        return nombreUsuario;
    }

    /**
     * @param nombreUsuario the nombreUsuario to set
     */
    public void setNombreUsuario(String nombreUsuario) {
        this.nombreUsuario = nombreUsuario;
    }

    /**
     * @return the claveUsuario
     */
    public String getClaveUsuario() {
        return claveUsuario;
    }

    /**
     * @param claveUsuario the claveUsuario to set
     */
    public void setClaveUsuario(String claveUsuario) {
        this.claveUsuario = claveUsuario;
    }

    /**
     * @return the claveUsuarioConf
     */
    public String getClaveUsuarioConf() {
        return claveUsuarioConf;
    }

    /**
     * @param claveUsuarioConf the claveUsuarioConf to set
     */
    public void setClaveUsuarioConf(String claveUsuarioConf) {
        this.claveUsuarioConf = claveUsuarioConf;
    }

    /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return the paterno
     */
    public String getPaterno() {
        return paterno;
    }

    /**
     * @param paterno the paterno to set
     */
    public void setPaterno(String paterno) {
        this.paterno = paterno;
    }

    /**
     * @return the materno
     */
    public String getMaterno() {
        return materno;
    }

    /**
     * @param materno the materno to set
     */
    public void setMaterno(String materno) {
        this.materno = materno;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }
}
