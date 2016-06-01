<%-- 
    Document   : modificarAlquiler
    Created on : May 21, 2016, 5:57:21 PM
    Author     : Marvin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Alquiler</title>
    </head>
    <body>
        <body background="books.jpg" align="center">
            <h1 style="color: yellow">SELECCIONE EL ALQUILER A ACTUALIZAR</h1>
        <form action="validar.jsp" method="POST">
            <table border="3" cellspacing="10">
                <thead>
                    <tr>
                        <th>TABLA DE ALQUILERES</th>
                        <th>MODIFICAR DATOS</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><table border="2" width="70" align="center" cellspacing="30">
                <thead>
                    <tr>
                        <th style="color: skyblue">Codigo Alquiler</th>
                        <th style="color: skyblue">Numero Membresia</th>
                        <th style="color: skyblue" style="font-size:20px">Fecha Alquiler</th>
                        <th style="color: skyblue" style="font-size:20px">Fecha Devolucion</th>
                        <th style="color: skyblue" style="font-size:20px">Valor Alquiler</th>
                        <th style="color: skyblue" style="font-size:20px">Cantidad</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td></td>
                        <td></td>
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
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
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
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
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
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
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
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
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
                        <td></td>
                    </tr>
                     <tr>
                         <td><input type="button" value="back" onClick="location.href = 'gestionarAlq.jsp'" style='width:150px; height:30px'/></td>
                    </tr>
                </tbody>
            </table></td>
                        <td> <table border="2" width="30" align="center" cellspacing="30" >
                <tbody>
                    <tr>
                        <td style="color:springgreen" >Codigo Alquiler</td>
                        <td><input type="text" name="cod" value="" style="font-size:20px"/></td>
                    </tr>
                    <tr>
                        <td style="color:springgreen">Numero Membresia</td>
                        <td><input type="text" name="num" value="" style="font-size:20px"/></td>
                    </tr>
                    <tr>
                        <td style="color:springgreen">Fecha Alquiler</td>
                        <td><input type="text" name="fechaAlq" value="" style="font-size:20px"/></td>
                    </tr>
                    <tr>
                        <td style="color:springgreen">Fecha Devolucion</td>
                        <td><input type="text" name="fechaDev" value="" style="font-size:20px"/></td>
                    </tr>
                    <tr>
                        <td style="color:springgreen">Valor Alquiler</td>
                        <td><input type="text" name="valor" value="0" style="font-size:20px"/></td>
                    </tr>
                    <tr>
                        <td style="color:springgreen">Cantidad</td>
                        <td><input type="text" name="cantidad" value="0" style="font-size:20px"/></td>
                    </tr>
                    <tr>
                        <td><input type="button" value="Agregar" onClick="newPage('catalogo.jsp')" style='width:250px; height:50px'/></td>
                        <td><input type="button" value="Regresar" onClick="location.href = 'gestionarAlq.jsp'" style='width:250px; height:50px'/></td>
                    </tr>
                </tbody>
            </table></td>
                    </tr>
                </tbody>
            </table>

        </form>
    </body>
</html>
