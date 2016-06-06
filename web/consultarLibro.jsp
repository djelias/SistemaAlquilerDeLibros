<%@page import="AlquilerLibroModelo.TipoLibro" %>
<%@page import="AlquilerLibroModelo.Libro" %>
<jsp:useBean id="tipoLibroDB" scope="session" class="AlquilerLibroDB.TipoLibroDB" />
<jsp:useBean id="libroDB" scope="session" class="AlquilerLibroDB.LibroDB" />


<%-- 
    Document   : consultarLibro
    Created on : May 21, 2016, 7:25:49 PM
    Author     : Marvin
--%>






<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    if (request.getParameter("cmd") == null) {
        libroDB.obtenerLibros();
    }else 
    {
        out.print("<strong>Error al Recuperar los datos de la base</strong>");
    }
%>



<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Libros</title>
    </head>
    <body>
        <body background="imagen8.jpg" align="center">
        <h1 style="color: skyblue">LIBROS EN EXISTENCIA EN EL SISTEMA</h1>
        <form action="validar.jsp" method="POST">
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
                        <td style="color: white"><%=libro.codigoL%></td>
                        <td style="color: white"><%=libro.idTipo%></td>
                        <td style="color: white"><%=libro.autor%></td>
                        <td style="color: white"><%=libro.titulo%></td>
                                               
                    </tr>
                    <%
                        }
                    %>
                </tbody>>
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
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        >
                    </tr>
                     <tr>
                         <td><input type="button" value="Regresar" onClick="location.href = 'gestionar.jsp'" style='width:150px; height:30px'/></td>
                    </tr>
                </tbody>
            </table>

        </form>
    </body>
</html>
