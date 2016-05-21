<%-- 
    Document   : menu01
    Created on : May 18, 2016, 11:06:18 PM
    Author     : Marvin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Libros.... </title>
    </head>
    <body>
        <body background="menu00.jpg" align="center"> 
        <h1 align="center" style="color:orange;">GESTIONAR LIBROS</h1>
        <form action="validar.jsp"  method="POST">
                <table border="0" width="20" align="center" cellspacing="30">
                    <tbody>
                        <tr>
                            <td></td>
                            <td><input type="button" value="Agregar Libro" style='width:250px; height:50px' onClick="location.href = 'agregarAlquiler.jsp'"/></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" value="Consultar Libros en Existencia" style='width:250px; height:50px'/></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" value="Eliminar Libro" style='width:250px; height:50px'/></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" value="Modificar Datos Libro" style='width:250px; height:50px'/></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="button"  value="Regresar" style='width:250px; height:50px' onClick="location.href = 'menu.jsp'" /></td>
                        </tr>
                    </tbody>
                </table>

        </form>
    </body>
</html>
