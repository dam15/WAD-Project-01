package com.ipn.Session;

import com.ipn.entidades.Usuario;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @author Diego
 */
public class ManejadorSesiones {
 
    //MODIFICAR PARA QUE PUEDA SUBIR UN OBJETO
    
    public static final String ID="idUsuario";
    public static final String NOMBRE="nombre";
    public static final String TIPO="tipo";
    
    public void createSession(HttpServletRequest request,HttpServletResponse response,
            String IDU,String nombreU,String tipoU)
    {
        HttpSession s=request.getSession(true);
        s.setAttribute(ID,IDU);
        s.setAttribute(NOMBRE, nombreU);
        s.setAttribute(TIPO, tipoU);
    }
    
    public void createSession(HttpServletRequest request,HttpServletResponse response,
            Usuario u)
    {
        HttpSession s=request.getSession(true);
        s.setAttribute(ID, u.getNombre());
        s.setAttribute(NOMBRE, u.getNombre());
        s.setAttribute(TIPO, u.getTipoUsuario());
    }
    
    public void removeSession(HttpServletRequest request)
    {
        HttpSession s=request.getSession(true);
        s.removeAttribute(ID);
        s.removeAttribute(NOMBRE);
        s.removeAttribute(TIPO);
        if(s!=null)
        {
            s.invalidate();
        }
    }
    
    public boolean isSession(HttpServletRequest request)
    {
        HttpSession s=request.getSession(false);
        if(s==null)
        {return false;}
        else
            return s.getAttribute(NOMBRE)!=null;
    }
}
