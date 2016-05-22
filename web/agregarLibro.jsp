<%-- 
    Document   : agregarLibro
    Created on : May 21, 2016, 7:25:17 PM
    Author     : Marvin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Libro</title>
    </head>
    <body>
        <body background="libro00.jpg" align="center">
        <h1>FORMULARIO PARA INGRESAR UN NUEVO LIBRO AL SISTEMA</h1>
         <form action="validar.jsp" method="POST">
            <table border="2" width="30" align="center" cellspacing="30" >
                <tbody>
                    <tr>
                        <td style="color:black" >Codido Libro</td>
                        <td><input type="text" name="id" value="" style="font-size:20px"/></td>
                    </tr>
                    <tr>
                        <td style="color:black">Id TipoLibro</td>
                        <td><input type="text" name="fechaAlq" value="" style="font-size:20px"/></td>
                    </tr>
                    <tr>
                        <td style="color:black">Autor</td>
                        <td><input type="text" name="fechaDev" value="" style="font-size:20px"/></td>
                    </tr>
                    <tr>
                        <td style="color:black">Titulo</td>
                        <td><input type="text" name="valorAlq" value="" style="font-size:20px"/></td>
                    </tr>
                    <tr>
                        <td></td>
                        
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td><input type="button" value="Agregar" onClick="newPage('catalogo.jsp')" style='width:250px; height:50px'/></td>
                        <td><input type="button" value="Regresar" onClick="location.href = 'gestionar.jsp'" style='width:250px; height:50px'/></td>
                    </tr>
                </tbody>
            </table>

        </form>
    </body>
</html>
