/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ipn.controller;

import com.ipn.Session.ManejadorSesiones;
import com.ipn.dao.UsuarioDAO;
import com.ipn.entidades.Usuario;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author Diego
 */
public class ActualizaAction extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static final String SUCCESS = "success";
    private static final String FAILURE ="failure";

    /**
     * This is the action called from the Struts framework.
     *
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
   
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        ActualizaForm formBean = (ActualizaForm)form;
        String nombre=formBean.getNombre();
        String paterno=formBean.getPaterno();
        String materno=formBean.getMaterno();
        String email=formBean.getEmail();
        if((nombre==null) ||                          //name parameter does not exist
             paterno==null ||                          //email parameter does not exist
             materno==null ||
             email == null || !email.contains("@"))
        {
            formBean.setError();
            return mapping.findForward(FAILURE);
        }
        ManejadorSesiones sesion = new ManejadorSesiones();
        UsuarioDAO dao = new UsuarioDAO();
        Usuario u= new Usuario();
        Usuario n=null;
        try{
            u.setIdusuario(7);
            n=dao.select(u);
            n.setNombre(nombre);
            n.setPaterno(paterno);
            n.setMaterno(materno);
            n.setCorreoUsuario(email);
            dao.crearActualizarUsuario(n);
            sesion.removeSession(request);
            sesion.createSession(request, response, n);
            return mapping.findForward(SUCCESS);
        }catch(Exception e){}
        return mapping.findForward(FAILURE);
    }
}
