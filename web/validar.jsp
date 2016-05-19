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
            if(s_nombre.equals("Gabriel") && s_password.equals("VC10014"))
            {
                response.sendRedirect("menu.jsp");
            }
            else
            {
                if(s_nombre.equals("Diego") && s_password.equals("EA08015"))
                {
                    response.sendRedirect("menu01.jsp");
                }
                else
                {
                    response.sendRedirect("index.jsp");
                }
            }
        %>
    </body>
</html>
