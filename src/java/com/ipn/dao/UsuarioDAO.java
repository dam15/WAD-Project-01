/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ipn.dao;

import com.ipn.entidades.Archivo;
import com.ipn.entidades.Usuario;
import com.ipn.recursos.HibernateUtil;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Diego
 */
public class UsuarioDAO {
    
    private final String LOGIN="FROM Usuario u WHERE u.nombreUsuario =:username AND u.claveUsuario =password";
    
    public void crearActualizarUsuario(Usuario usuario) throws HibernateException
    {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction transaction = session.getTransaction();
        try {
            // Empieza la transaccion, guarda o actualiza al usuario 
            transaction.begin();
                session.saveOrUpdate(usuario);
            transaction.commit();
        } catch (HibernateException e) {
            if(transaction != null && transaction.isActive())
                transaction.rollback();
        }
    }
    
    public void crearActualizarArchivo(Archivo archivo) throws Exception
    {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction transaction = session.getTransaction();
        try {
            // Empieza la transaccion, guarda o actualiza al usuario 
            transaction.begin();
                session.saveOrUpdate(archivo);
            transaction.commit();
        } catch (HibernateException e) {
            if(transaction != null && transaction.isActive())
                transaction.rollback();
        }
    }
    
    public void borrarUsuario(Usuario usuario) throws Exception
    {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction transaction = session.getTransaction();
        try {
            // Empieza la transaccion, guarda o actualiza al usuario 
            transaction.begin();
                session.delete(usuario);
            transaction.commit();
        } catch (HibernateException e) {
            if(transaction != null && transaction.isActive())
                transaction.rollback();
        }
    }
    public void borrarArchivo(Archivo archivo) throws Exception
    {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction transaction = session.getTransaction();
        try {
            // Empieza la transaccion, guarda o actualiza al usuario 
            transaction.begin();
                session.delete(archivo);
            transaction.commit();
        } catch (HibernateException e) {
            if(transaction != null && transaction.isActive())
                transaction.rollback();
        }
    }
    public Usuario select(Usuario usuario) throws Exception
    {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction transaction = session.getTransaction();
        try {
            // Empieza la transaccion, guarda o actualiza al usuario 
            transaction.begin();
                usuario=(Usuario)session.get(Usuario.class,usuario.getIdusuario());
            transaction.commit();
        } catch (HibernateException e) {
            if(transaction != null && transaction.isActive())
                transaction.rollback();
        }
        return usuario;
    }
    public List selectAll() throws Exception
    {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction transaction = session.getTransaction();
        List resultados=null;
        try {
            // Empieza la transaccion, guarda o actualiza al usuario 
            transaction.begin();
                Query q=session.createQuery("from Usuario");
                resultados=q.list();
            transaction.commit();
        } catch (HibernateException e) {
            if(transaction != null && transaction.isActive())
                transaction.rollback();
        }
        return resultados;
    }
    
    public Usuario login(String username,String password) throws HibernateException
    {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction transaction = session.getTransaction();
        Usuario u=null;
        try{
            transaction.begin();
                Query q=session.getNamedQuery("userLoginU");
                q.setParameter("username",username);
                q.setParameter("pass",password);
                // Obtener el usuario que ha ingresado su sesion
                u=(Usuario) q.uniqueResult();
            transaction.commit();
        }catch (HibernateException e) {
            if(transaction != null && transaction.isActive())
                transaction.rollback();
        }
        return u;
    }
    
    public List allFiles(Usuario usuario) throws Exception
    {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction transaction = session.getTransaction();
        List resultados=null;
        try {
            // Empieza la transaccion, guarda o actualiza al usuario 
            transaction.begin();
                usuario=(Usuario)session.get(Usuario.class, usuario.getIdusuario());
                //resultados=(List) usuario.getArchivos();
            transaction.commit();
        } catch (HibernateException e) {
            if(transaction != null && transaction.isActive())
                transaction.rollback();
        }
        return resultados;
    }
    
    public Archivo selectFile(Usuario usuario,Archivo archivo) throws Exception
    {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction transaction = session.getTransaction();
        try {
            // Empieza la transaccion, guarda o actualiza al usuario 
            transaction.begin();
                usuario=(Usuario)session.get(Usuario.class, usuario.getIdusuario());
                archivo=(Archivo)session.get(Archivo.class,archivo.getIdarchivo());
            transaction.commit();
        } catch (HibernateException e) {
            if(transaction != null && transaction.isActive())
                transaction.rollback();
        }
        if(usuario==archivo.getUsuario())
        return archivo;
        else
        return null;
    }
    
    public static void main(String[] args) throws Exception {
        UsuarioDAO dao = new UsuarioDAO();
        Usuario p= new Usuario();
        Usuario n=null;
        p.setIdusuario(7);
        n=dao.select(p);
        n.setNombre("Rocky");
        n.setPaterno("Williams");
        n.setMaterno("Smith");
        try{
            //u=dao.select(p);
            dao.crearActualizarUsuario(n);
            //l=dao.selectAll();
        }catch(HibernateException e){}
        System.out.println(n);
        System.out.println("Transaccion finalizada...");
        /*
        if(u==null)System.out.println("Esta vacio");
        else System.out.println(u);
        */
    }
}
