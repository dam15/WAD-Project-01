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
    
private String destino="/Users/eric/NetBeansProjects/WAD/WAD-Project-01/web/archivos/";

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
