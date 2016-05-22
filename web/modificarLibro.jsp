<%-- 
    Document   : modificarLibro
    Created on : May 21, 2016, 7:26:01 PM
    Author     : Marvin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Libros</title>
    </head>
    <body>
        <body background="writer.jpg" align="center">
            <h1 style="color: white">SELECCIONE EL LIBRO A MODIFICAR</h1>
         <form action="validar.jsp" method="POST">
            <table border="3" cellspacing="10">
                <thead>
                    <tr>
                        <th>TABLA DE LIBROS</th>
                        <th>MODIFICAR DATOS</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><table border="2" width="70" align="center" cellspacing="30">
                <thead>
                    <tr>
                        <th style="color: red">Codigo Libro</th>
                        <th style="color: red" style="font-size:20px">Id TipoLibro</th>
                        <th style="color: red" style="font-size:20px">Autor</th>
                        <th style="color: red" style="font-size:20px">Titulo</th>
                        <th style="color: red" ></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td  ></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td ></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                     <tr>
                         <td><input type="button" value="Regresar" onClick="location.href = 'gestionar.jsp'" style='width:150px; height:30px'/></td>
                    </tr>
                </tbody>
            </table></td>
                        <td> <table border="2" width="30" align="center" cellspacing="30" >
                <tbody>
                    <tr>
                        <td style="color:blue" >Codigo Libro</td>
                        <td><input type="text" name="id" value="" style="font-size:20px"/></td>
                    </tr>
                    <tr>
                        <td style="color:blue">Autor</td>
                        <td><input type="text" name="fechaAlq" value="" style="font-size:20px"/></td>
                    </tr>
                    <tr>
                        <td style="color:blue">Titulo</td>
                        <td><input type="text" name="fechaDev" value="" style="font-size:20px"/></td>
                    </tr>
                    <tr>
                        <td style="color:blue"></td>
                        <td><input type="text" name="valorAlq" value="" style="font-size:20px"/></td>
                    </tr>
                    <tr>
                        <td style="color:blue"></td>
                        <td><input type="text" name="cantidad" value="" style="font-size:20px"/></td>
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
            </table></td>
                    </tr>
                </tbody>
            </table>

        </form>
    </body>
</html>
