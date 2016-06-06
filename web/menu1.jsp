<%-- 
    Document   : menu1
    Created on : May 21, 2016, 12:31:41 AM
    Author     : Marvin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Libros</title>
    </head>
    <body>
        <body background="fondoMenu.jpg">
        <h1 align="center">GESTIONAR LIBROS</h1>
        <form action="validar.jsp"  method="POST">
                <table border="0" width="20" align="center" cellspacing="30">
                    <tbody>
                        <tr>
                            <td></td>
                            <td><input type="button" value="Gestionar Libros" style='width:250px; height:50px' onClick="location.href = 'gestionar.jsp'"/></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" value="Gestionar Alquileres" style='width:250px; height:50px'/></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" value="Eliminar Alquiler de Peliculas" style='width:250px; height:50px'/></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" value="Modificar Alquiler de Peliculas" style='width:250px; height:50px'/></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="button"  value="Salir" style='width:250px; height:50px' onClick="location.href = 'index.jsp'" /></td>
                        </tr>
                    </tbody>
                </table>

        </form>
    </body>
</html>
