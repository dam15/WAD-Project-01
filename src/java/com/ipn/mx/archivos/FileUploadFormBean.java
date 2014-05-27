/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ipn.mx.archivos;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.servlet.http.Part;

/**
 *
 * @author eric
 */

@ManagedBean
@RequestScoped
public class FileUploadFormBean {
private Part fileUpload;
private String destino="/Users/eric/NetBeansProjects/WAD/WAD-Project-01/web/archivos/";
/**
     * Creates a new instance of FileUploadFormBean
     */
    public FileUploadFormBean() {
        
    }

    public Part getFileUpload() {
        return fileUpload;
    }

    public void setFileUpload(Part fileUpload) {
        this.fileUpload = fileUpload;
    }
    
     public void uno() throws IOException{
        copiarArchivo(fileUpload.getSubmittedFileName(), fileUpload.getInputStream());
        
    }
     
    public void  copiarArchivo(String nombrearchivo, InputStream in) throws FileNotFoundException, IOException{
       try{
           OutputStream out =  new FileOutputStream(new File(destino + nombrearchivo));
       
        int read = 0;
        byte[] bytes = new byte[1024];
        
        while((read = in.read(bytes)) != -1){
            out.write(bytes, 0, read);
        }
        
        in.close();
        out.flush();
        out.close();
    System.out.println("New file created!");

} catch (IOException e) {

System.out.println(e.getMessage());

}    
    }
}
