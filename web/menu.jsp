<%-- 
    Document   : menu
    Created on : May 18, 2016, 12:57:36 PM
    Author     : Marvin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu de Administrador</title>
    </head>
    <body>
        <body background="imagen1.jpg">
        <h1 align="center" style="color:red;">Menu para Administrador</h1>
        <form action="validar.jsp"  method="POST">
                <table border="0" width="20" align="center" cellspacing="30">
                    <tbody>
                        <tr>
                            <td></td>
                            <td><input type="submit" value="Agregar Alquiler de Pelicula" style='width:250px; height:50px'/></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" value="Consultar Peliculas en Existencia" style='width:250px; height:50px'/></td>
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
                            <td><input type="submit" value="Salir" style='width:250px; height:50px'/></td>
                        </tr>
                    </tbody>
                </table>

        </form>
    </body>
</html>
