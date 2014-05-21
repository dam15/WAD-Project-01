package com.ipn.recursos;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 * @author Diego Aguilar Mayen
 */

/*
    MANDAR UN CORREO AL PROFESOR PARA PROBAR EL CODIGO
*/
public class DemoEnvioMail {
    
    public void enviarMail(String correoDestinatario,String asunto,
            String textCorreo)
    {
        try{
            // Propiedades de la conexion
            Properties props = new Properties();
            props.setProperty("mail.smtp.host","smtp.gmail.com");
            props.setProperty("mail.smtp.starttls.enable","true");
            props.setProperty("mail.smtp.port","587");
            props.setProperty("mail.smtp.user","diego.aguilar.m15@gmail.com");
            props.setProperty("mail.smtp.auth","true");
            
            //Inicializar la Sesion 
            Session session = Session.getDefaultInstance(props);
            
            //El mensaje
            MimeMessage message = new MimeMessage(session);
            message.setFrom(
                new InternetAddress("diego.aguilar.m15@gmail.com"));
            message.addRecipient(Message.RecipientType.TO,
                    new InternetAddress(correoDestinatario));
            message.addRecipient(Message.RecipientType.BCC, 
                    new InternetAddress(correoDestinatario));
            
            message.setSubject(asunto);
            message.setText(textCorreo);
            //envio Mensaje
            Transport transporte = session.getTransport("smtp");
            transporte.connect("diego.aguilar.m15@gmail.com","guitarplayer");
            transporte.sendMessage(message, message.getAllRecipients());
            //Cierre
            transporte.close();
        }catch(Exception e){e.printStackTrace();}
    }
    
    public static void main(String[] args) {
        DemoEnvioMail DM = new DemoEnvioMail();
        DM.enviarMail("webappdevescom@gmail.com","Prueba JavaMail","Probando correo JavaMail"
                + "Alumno: Diego Aguilar Mayen Grupo:3CM8");
    }
}
