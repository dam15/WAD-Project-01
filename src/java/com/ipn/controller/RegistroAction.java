/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ipn.controller;

import com.ipn.dao.UsuarioDAO;
import com.ipn.entidades.Usuario;
import com.ipn.recursos.DemoEnvioMail;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.HibernateException;

/**
 *
 * @author Diego
 */
public class RegistroAction extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static final String SUCCESS = "success";
    private static final String FAILURE="failure";

    /*  Correos */
    private static final String ASUNTO="Registro a AirPadlook";
    private static final String MENSAJE="¡Felicidades! Su registro a AirPadLook ha sido completado. Siga disfrutando del mejor"
            + "servicio de Cloud-storage en México a los mejores precios, solo en AirPadlook. ";
    
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
        RegistroForm formBean=(RegistroForm)form;
        String username=formBean.getNombreUsuario();
        String password=formBean.getClaveUsuario();
        String passconf=formBean.getClaveUsuarioConf();
        String nombre=formBean.getNombre();
        String paterno=formBean.getPaterno();
        String materno=formBean.getMaterno();
        String email=formBean.getEmail();
        UsuarioDAO dao = new UsuarioDAO();
        Usuario u= new Usuario();
        u.setNombreUsuario(username);
        u.setClaveUsuario(passconf);
        u.setNombre(nombre);
        u.setPaterno(paterno);
        u.setMaterno(materno);
        u.setCorreoUsuario(email);
        u.setTipoUsuario('u');
        //perform validation
        if((username==null) ||                          //name parameter does not exist
             password==null ||                          //email parameter does not exist
                username.equals("") ||                  //name parameter is empty
                password.equals("") ||
                passconf.equals("") ||
            nombre==null || paterno == null || materno == null || email == null
                || !passconf.equals(password) || !email.contains("@"))
        {
            formBean.setError();
            return mapping.findForward(FAILURE);
        }
        try{
            dao.crearActualizarUsuario(u);
            DemoEnvioMail mail = new DemoEnvioMail();
            mail.enviarMail(u.getCorreoUsuario(),ASUNTO,MENSAJE);
            request.setAttribute("correo", u.getCorreoUsuario());
            return mapping.findForward(SUCCESS);
        }catch(HibernateException e){e.printStackTrace();}
        
    return mapping.findForward(FAILURE);
}

}
