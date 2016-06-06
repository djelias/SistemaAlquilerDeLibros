<%-- 
    Document   : agregarLibro
    Created on : May 21, 2016, 7:25:17 PM
    Author     : Marvin
--%>
<%@page import="AlquilerLibroModelo.Libro" %> 
<%@page import="AlquilerLibroModelo.TipoLibro" %>  

<jsp:useBean id="tipoBd" scope="session" class="AlquilerLibroDB.TipoLibroDB" /> 
<jsp:useBean id="libroBd" scope="session" class="AlquilerLibroDB.LibroDB" /> 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%  
    if (request.getParameter("cmd") == null) {         
        //editorialBd.obtenerEditoriales();         
       // libroBd.obtenerLibros();     
    } else {
        //INVOCA LOS BOTONES QUE CONTENDRA
        if (request.getParameter("cmd").equals("guardar")) 
        {
            if (request.getParameter("id") != null && request.getParameter("tipo") != null && request.getParameter("autor") != null && request.getParameter("titulo") != null) 
            {
                if (!request.getParameter("id").isEmpty() && !request.getParameter("tipo").isEmpty()) 
                {
                    String codigoL = request.getParameter("id");
                    String idTipo = request.getParameter("tipo");
                    String autor = request.getParameter("autor");
                    String titulo = request.getParameter("titulo");
                    
                    //BOTON GUARDAR
                    if (request.getParameter("cmd").equals("guardar")) 
                    {
                        if (libroBd.guardar(codigoL, idTipo, autor, titulo)) 
                        {
                            out.print("<strong>Guardado</strong>");
                           // libroBd.obtenerLibros();
                        } else 
                        
                        {

                            out.print("<strong>Ocurrió un error al guardar</strong>");
                        }
                    }       //FINALIZA BOTON GUARDAR
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
        <title>Agregar Libro</title>
        <script type="text/javascript">             
            function asignarAccion(accion) {                 
                document.forms['librofrm'].cmd.value = accion;             
            }         
                    </script> 
    </head>
    <body>
        <body background="libro00.jpg" align="center">
            
        <h1>FORMULARIO PARA INGRESAR UN NUEVO LIBRO AL SISTEMA</h1>
         <form id="librofrm" method="POST">
            <table border="2" width="30" align="center" cellspacing="30" >
                <tbody>
                    <tr>
                        <td style="color:black" >Codido Libro</td>
                        <td><input type="text" name="id" style="font-size:20px"/></td>
                    </tr>
                    <tr>
                        <td style="color:black">Id TipoLibro</td>
                        <td><input type="text" name="tipo" value="" style="font-size:20px"/></td>
                    </tr>
                    <tr>
                        <td style="color:black">Autor</td>
                        <td><input type="text" name="autor" value="" style="font-size:20px"/></td>
                    </tr>
                    <tr>
                        <td style="color:black">Titulo</td>
                        <td><input type="text" name="titulo" value="" style="font-size:20px"/></td>
                    </tr>
                    <tr>
                        
                        
                    </tr>
                </tbody>
                <tfoot>
                    <tr><td><input type="submit" value="Guardar" onclick="asignarAccion('guardar')" style='width:250px; height:50px'/></td>
                    <td><input type="button" value="Regresar" onClick="location.href = 'gestionar.jsp'" style='width:250px; height:50px'/></td></tr>
                </tfoot>
            </table>
             <input name="cmd" type="hidden"/>
        </form>
    </body>
</html>
