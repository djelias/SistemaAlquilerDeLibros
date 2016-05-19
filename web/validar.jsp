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
        %>
    </head>
    <body>
        <% 
            s_nombre=request.getParameter("fNombre");
            s_password=request.getParameter("fPassword");
            if(s_nombre.equals("Administrador") && s_password.equals("SYP115"))
            {
                response.sendRedirect("menu.jsp");
            }
            else
            {
                response.sendRedirect("index.jsp");
            }
        %>
    </body>
</html>
