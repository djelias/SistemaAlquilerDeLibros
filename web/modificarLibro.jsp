<%-- 
    Document   : modificarLibro
    Created on : May 21, 2016, 7:26:01 PM
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
        libroBd.obtenerLibros();
    } else {
        if (request.getParameter("cmd").equals("actualizar")) {
            if (request.getParameter("codigotxt")
                    != null && request.getParameter("tipotxt")
                    != null && request.getParameter("autortxt")
                    != null && request.getParameter("titulotxt")
                    != null) {
                if (!request.getParameter("codigotxt").isEmpty()
                        && !request.getParameter("tipotxt").isEmpty()
                        && !request.getParameter("autortxt").isEmpty()
                        && !request.getParameter("titulotxt").isEmpty()) {
                    
                    String codigo = request.getParameter("codigotxt");
                    String tipo = request.getParameter("tipotxt");
                    String autor = request.getParameter("autortxt");
                    String titulo = request.getParameter("titulotxt");

                    if (libroBd.actualizar(codigo, tipo, autor, titulo)) {
                        out.print("<strong>Guardado</strong>");
                        libroBd.obtenerLibros();
                    } else {
                        out.print("<strong>Ocurrió un error al actualizar</strong>");
                    }
                } else {
                    out.print("<strong>Debe ingresar los campos solicitados</strong>");
                }
            } else {
                out.print("<strong>Error al Recuperar los datos de la base</strong>");
            }
        }
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Libros</title>
         <script type="text/javascript">
            function asignarAccion(accion) {
                document.forms['librofrm'].cmd.value = accion;
            }
        </script>
    </head>
    <body>
        <body background="writer.jpg" align="center">
            <h1 style="color: white">SELECCIONE EL LIBRO A MODIFICAR</h1>
             <form id="librofrm">
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
                    </tr>
                </thead>
                <tbody>
                      <%
                                        for (Libro libro : libroBd.getLibros()) {
                                    %>
                    <tr>
                                        <td><%=libro.codigoL%></td>
                                        <td><%=libro.idTipo%></td>
                                        <td><%=libro.autor%></td>
                                        <td><%=libro.titulo%></td>
                                        
                                    </tr>
                                    <%
                                        }
                                    %>
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
                        <td><input type="text" name="codigotxt" value="" style="font-size:20px"/></td>
                    </tr>
                    <tr>
                        <td style="color:blue">Id TipoLibro</td>
                        <td><input type="text" name="tipotxt" value="" style="font-size:20px"/></td>
                    </tr>
                    <tr>
                        <td style="color:blue">Autor</td>
                        <td><input type="text" name="autortxt" value="" style="font-size:20px"/></td>
                    </tr>
                    <tr>
                        <td style="color:blue">Titulo</td>
                        <td><input type="text" name="titulotxt" value="" style="font-size:20px"/></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Modificar" onClick="asignarAccion('actualizar')" style='width:250px; height:50px'/></td>
                        <td><input type="button" value="Regresar" onClick="location.href = 'gestionar.jsp'" style='width:250px; height:50px'/></td>
                    </tr>
                </tbody>
            </table></td>
                    </tr>
                </tbody>
            </table>
 <input name="cmd" type="hidden"/>
        </form>
    </body>
</html>
