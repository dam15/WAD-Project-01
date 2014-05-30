/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ipn.mx.archivos;

import java.io.File;
import java.io.IOException;

/**
 *
 * @author eric
 */
public class manipulacionArchivos {
    
private String destino2="/Users/eric/NetBeansProjects/WAD/WAD-Project-01/web/archivos/";
private String destino="C:\\Users\\Diego\\Documents\\ESCOM\\SEMESTRE 6\\WAD\\EJERCICIOS\\JSF\\WAD_Proyecto\\web\\archivos\\";

public String creaCarpetaUsuario(String usuario) throws IOException{
    String rutaUsuario=destino+usuario;
File carpeta = new File(destino+usuario);
if(carpeta.exists()){
return rutaUsuario;
}
else{
carpeta.mkdir();
return rutaUsuario;
}

}

}
