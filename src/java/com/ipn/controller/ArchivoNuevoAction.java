/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ipn.controller;

import com.ipn.dao.UsuarioDAO;
import com.ipn.entidades.Archivo;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.HibernateException;

/**
 *
 * @author eric
 */
public class ArchivoNuevoAction extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static final String SUCCESS = "success";

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
        
        ArchivoNuevoForm formBean =  (ArchivoNuevoForm) form;
        
        String nombreArchivo = formBean.getNombreArchivo();
        String tipoArchivo = formBean.getTipoArchivo();
        String size = formBean.getSize();
        String path =  formBean.getPath();
        int usuario_idusuario = formBean.getUsuario_idusuario();
        
        UsuarioDAO dao = new UsuarioDAO();
        Archivo a =  new Archivo();
        a.setNombreArchivo(nombreArchivo);
        a.setTipoArchivo(tipoArchivo);
        a.setSize(size);
        a.setPath(path);
        
        
        try{
        dao.crearActualizarArchivo(a);
        }catch(HibernateException he ){he.printStackTrace();}
        
        return mapping.findForward(SUCCESS);
    }
}
