<%-- 
    Document   : perfil
    Created on : 19-may-2014, 23:12:49
    Author     : eric
--%>

<%@page import="java.io.File"%>
<%@page import="java.util.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<f:view>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            <title>JSP Page</title>
        </head>
        <body>


            <%
                File[] direc = File.listRoots();
                int j;
                for (j = 0; j < direc.length; j++) {
                    System.out.println(direc[j]);
                }
                
                
                File ruta = new File("archivos");
                if(ruta.isDirectory()){
                    System.out.println("Si");
                }
                else{
                System.out.println("no");
                }
            %>

            <h1><h:outputText value="Hello World!"/></h1>
        </body>
    </html>
</f:view>
