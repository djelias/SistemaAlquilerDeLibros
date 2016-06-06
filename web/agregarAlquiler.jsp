<%-- 
    Document   : agregarAlquiler
    Created on : May 20, 2016, 10:34:47 PM
    Author     : Marvin
--%>

<%@page import="AlquilerLibroModelo.Alquiler" %> 
<%@page import="AlquilerLibroModelo.Ejemplar" %>  

<jsp:useBean id="ejemplarBd" scope="session" class="AlquilerLibroDB.EjemplarDB" /> 
<jsp:useBean id="alquilerBd" scope="session" class="AlquilerLibroDB.AlquilerDB" /> 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%  
    if (request.getParameter("cmd") == null) {         
        //editorialBd.obtenerEditoriales();         
        alquilerBd.obtenerAlquileres();
    } else {
        //INVOCA LOS BOTONES QUE CONTENDRA
        if (request.getParameter("cmd").equals("guardar")) 
        {
            if (request.getParameter("cod") != null && request.getParameter("num") != null && request.getParameter("fechaAlq") != null && request.getParameter("fechaDev") != null && request.getParameter("valor") != null && request.getParameter("cantidad") != null) 
            {
                if (!request.getParameter("cod").isEmpty() && !request.getParameter("num").isEmpty()) 
                {
                    String codigo = request.getParameter("cod");
                    String numero = request.getParameter("num");
                    String fechaA = request.getParameter("fechaAlq");
                    String fechaD = request.getParameter("fechaDev");
                    String valor = request.getParameter("valor");
                    String cantidad = request.getParameter("cantidad");
                    
                    //BOTON GUARDAR
                    if (request.getParameter("cmd").equals("guardar")) 
                    {
                        if (alquilerBd.guardar(codigo, numero, fechaA, fechaD, valor, cantidad)) 
                        {
                            out.print("<strong>Guardado</strong>");
                            alquilerBd.obtenerAlquileres();
                        } else {

                            out.print("<strong>Ocurrió un error al guardar</strong>");
                        }
                    }//FINALIZA BOTON GUARDAR
                } 
           }else 
                                {
                                    out.print("<strong>Debe ingresar los campos solicitados, estan vacios</strong>");
                                }
                     }
       }
     
        
%> 

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
<script type="text/javascript">             
            function asignarAccion(accion) {                 
                document.forms['alquilerfrm'].cmd.value = accion;             
            }         
                    </script> 
        <body background="imagen6.jpg" align="center"> 
            <h1 style="color: red">FORMULARIO PARA AGREGAR ALQUILER</h1>
            <form id="alquilerfrm" method="POST">
            <table border="2" width="30" align="center" cellspacing="30" >
                <tbody>
                    <tr>
                        <td style="color:blue" >Codigo Alquiler</td>
                        <td><input type="text" name="cod" value="" style="font-size:20px"/></td>
                    </tr>
                    <tr>
                        <td style="color:blue">Numero Membresia</td>
                        <td><input type="text" name="num" value="" style="font-size:20px"/></td>
                    </tr>
                    <tr>
                        <td style="color:blue">Fecha Alquiler</td>
                        <td><input type="text" name="fechaAlq" value="" style="font-size:20px"/></td>
                    </tr>
                    <tr>
                        <td style="color:blue">Fecha Devolucion</td>
                        <td><input type="text" name="fechaDev" value="" style="font-size:20px"/></td>
                    </tr>
                    <tr>
                        <td style="color:blue">Valor Alquiler</td>
                        <td><input type="text" name="valor" value="0" style="font-size:20px"/></td>
                    </tr>
                    <tr>
                        <td style="color:blue">Cantidad</td>
                        <td><input type="text" name="cantidad" value="0" style="font-size:20px"/></td>
                    </tr>
                    
                </tbody>
                <tfoot>
                    <tr>
                        <td><input type="submit" value="Guardar" onclick="asignarAccion('guardar')" style='width:250px; height:50px'/></td>
                       
                        <td><input type="button" value="Regresar" onClick="location.href = 'gestionarAlq.jsp'" style='width:250px; height:50px'/></td>
                        
                    </tr>
                    <tr><td><input type="button" value="Catalogo Libros" onClick="newPage('catalogo.jsp')" style='width:250px; height:50px'/></td> </tr>
                </tfoot>
            </table>
                <input name="cmd" type="hidden"/>
        </form>
        <!--<input type="button" value="Catalogo Libros" onClick="newPage('catalogo.jsp')" style='width:150px; height:30px'/>!-->
    </body>
</html>
