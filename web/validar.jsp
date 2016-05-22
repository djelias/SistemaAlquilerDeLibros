<%-- 
    Document   : validar
    Created on : May 18, 2016, 12:57:12 PM
    Author     : Marvin
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
            String s_nombre;
            String s_password;
            String boton;
           
        %>
    </head>
    <body>
        <% 
            s_nombre=request.getParameter("fNombre");
            s_password=request.getParameter("fPassword");
            if((s_nombre.equals("Gabriel") && s_password.equals("VC10014"))||(s_nombre.equals("Ricardo") && s_password.equals("ME11022"))||(s_nombre.equals("Diego") && s_password.equals("EA08015"))||(s_nombre.equals("Josimar") && s_password.equals("CF07030"))||(s_nombre.equals("Miguel") && s_password.equals("UR08001")))
            {
                response.sendRedirect("menu.jsp");
            }
            else
            {
                /*if(s_nombre.equals("Diego") && s_password.equals("EA08015"))
                {
                    response.sendRedirect("menu01.jsp");
                }
                else
                {*/
                    response.sendRedirect("index.jsp");
               // }
            }
           
         /*
            String boton=request.getParameter("salir");
            if(boton.equals("salir"))
            {
               String urlDestino = "index.jsp?";           
               response.sendRedirect(urlDestino);
            }
        */
            
        %>
    </body>
</html>
