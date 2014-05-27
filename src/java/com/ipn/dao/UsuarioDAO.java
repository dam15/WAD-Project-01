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
    
    public void crearActualizarUsuario(Usuario usuario) throws Exception
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
    
    public List allFiles(Usuario usuario) throws Exception
    {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction transaction = session.getTransaction();
        List resultados=null;
        try {
            // Empieza la transaccion, guarda o actualiza al usuario 
            transaction.begin();
                usuario=(Usuario)session.get(Usuario.class, usuario.getIdusuario());
                resultados=(List) usuario.getArchivos();
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
    
    
}
