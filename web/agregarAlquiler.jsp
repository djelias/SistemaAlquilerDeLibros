<%-- 
    Document   : agregarAlquiler
    Created on : May 20, 2016, 10:34:47 PM
    Author     : Marvin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Alquiler</title>
    </head>
    <body>
        <script language="JavaScript">
function newPage(url){
window.open(url,"","algun parametro que desees");
}
</script>
        <body background="ingresar0.jpg" align="center"> 
            <h1 style="color: skyblue">FORMULARIO PARA AGREGAR ALQUILER</h1>
        <form action="validar.jsp" method="POST">
            <table border="2" width="30" align="center" cellspacing="30" >
                <tbody>
                    <tr>
                        <td style="color:white" >ID Cliente</td>
                        <td><input type="text" name="id" value="" style="font-size:20px"/></td>
                    </tr>
                    <tr>
                        <td style="color:white">Fecha Alquiler</td>
                        <td><input type="text" name="fechaAlq" value="" style="font-size:20px"/></td>
                    </tr>
                    <tr>
                        <td style="color:white">Fecha Devolucion</td>
                        <td><input type="text" name="fechaDev" value="" style="font-size:20px"/></td>
                    </tr>
                    <tr>
                        <td style="color:white">Valor Alquiler</td>
                        <td><input type="text" name="valorAlq" value="0" style="font-size:20px"/></td>
                    </tr>
                    <tr>
                        <td style="color:white">Cantidad</td>
                        <td><input type="text" name="cantidad" value="0" style="font-size:20px"/></td>
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
                        <td><input type="button" value="Regresar" onClick="location.href = 'gestionarAlq.jsp'" style='width:250px; height:50px'/></td>
                    </tr>
                </tbody>
            </table>

        </form>
        <input type="button" value="Catalogo Libros" onClick="newPage('catalogo.jsp')" style='width:150px; height:30px'/>
    </body>
</html>
