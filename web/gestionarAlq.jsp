<%-- 
    Document   : gestionarAlq
    Created on : May 21, 2016, 12:34:12 AM
    Author     : Marvin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alquileres...</title>
    </head>
    <body>
        
        <body background="libro.jpg" align="center"> 
            <h1 style="color:white" front size="10">GESTIONAR ALQUILERES DE LIBROS</h1>
        <form action="validar.jsp"  method="POST">
                <table border="0" width="20" align="center" cellspacing="30">
                    <tbody>
                        <tr>
                            <td></td>
                            <td><input type="button" value="Agregar un Alquiler" style='width:250px; height:50px' onClick="location.href = 'agregarAlquiler.jsp'"/></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" value="Consultar Alquiler" style='width:250px; height:50px'/></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" value="Eliminar Alquiler" style='width:250px; height:50px'/></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" value="Modificar Alquiler" style='width:250px; height:50px'/></td>
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
