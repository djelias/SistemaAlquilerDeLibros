<%@page import="AlquilerLibroModelo.TipoLibro" %>
<%@page import="AlquilerLibroModelo.Libro" %>
<jsp:useBean id="tipoLibroDB" scope="session" class="AlquilerLibroDB.TipoLibroDB" />
<jsp:useBean id="libroDB" scope="session" class="AlquilerLibroDB.LibroDB" />

<%-- 
    Document   : eliminarLibro
    Created on : May 21, 2016, 7:25:37 PM
    Author     : Marvin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    if (request.getParameter("cmd") == null) {
       
        libroDB.obtenerLibros();
        
               
    } else //INVOCA LOS BOTONES QUE CONTENDRA
    
    {
        if (request.getParameter("cmd").equals("eliminar")) 
        {
        
            if (request.getParameter("codigoL") != null) 
            {
           
                if (!request.getParameter("codigoL").isEmpty()) 
                {
                String codigoL = request.getParameter("codigoL");
                
                
                //BOTON ELIMINAR
                
                if ( request.getParameter("cmd").equals("eliminar"))
                {
                    if (libroDB.eliminar(codigoL))
                    {
                        out.print("<strong>Eliminado</strong>");
                            libroDB.obtenerLibros();
                    } else 
                        
                        {

                            out.print("<strong>Ocurrió un error al guardar</strong>");
                        }
                
                
                
                }
            }
        } else 
                 {
        out.print("<strong>Ocurrió un error al guardar</strong>");

    }

    }
    }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Libro</title>
        <script type="text/javascript">
            function asignarAccion(accion) {
                document.forms['librofrm'].cmd.value = accion;
            }
        </script> 
    </head>
    <body>
        
    <body background="imagen7.jpg" align="center">
        <h1 style="color: black">INTRODUZCA CODIGO DE LIBRO A ELIMINAR</h1>
        <form id="librofrm" method="POST">
        

            <table border="2" width="70" align="center" cellspacing="30">
                <thead>
                    <tr>
                        <th style="color: red">Codigo Libro</th>
                        <th style="color: red" style="font-size:20px">Id TipoLibro</th>
                        <th style="color: red" style="font-size:20px">Autor</th>
                        <th style="color: red" style="font-size:20px">Titulo</th>
                       
                    </tr>
                </thead>

                <tbody>
                    <%                       
                        for (Libro libro : libroDB.getLibros()) {
                    %>


                    <tr>
                        <td style="color: black"><%=libro.codigoL%></td>
                        <td style="color: black"><%=libro.idTipo%></td>
                        <td style="color: black"><%=libro.autor%></td>
                        <td style="color: black"><%=libro.titulo%></td>
                    </tr>

                    <%
                        }
                    %>
                    <tr>
                        <td ></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        
                    </tr>
                    
                    <tr>
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
                        
                    </tr>
                    
                    <tr>
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
                        
                    </tr>
                    
                    <tr>
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
                        
                    </tr>
                    
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        
                    </tr>
                    
                    <tr>
                        <td style="color: red">Codigo Libro:</td>
                        <td><input type="text" name="codigoL" value="" style='width:150px; height:30px'/></td>
                    </tr>
                    
                    
                    
                </tbody>
                
                <tfoot>
                    
                    <tr>
                        <td><input type="button" value="Regresar" onClick="location.href = 'gestionar.jsp'" style='width:150px; height:30px'/></td>
                        <td><input type="submit" value="Eliminar" onClick="asignarAccion('eliminar')" style='width:150px; height:30px'/></td>
                    </tr>
                    
                    
                </tfoot>
                
            </table>
                        <input name="cmd" type="hidden"/>
        </form>
    </body>
</html>
