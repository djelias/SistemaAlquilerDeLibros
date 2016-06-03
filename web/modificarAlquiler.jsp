<%@page import="AlquilerLibroModelo.Cliente" %>
<%@page import="AlquilerLibroModelo.Alquiler" %>
<jsp:useBean id="clienteDB" scope="session" class="AlquilerLibroDB.ClienteDB" />
<jsp:useBean id="alquilerDB" scope="session" class="AlquilerLibroDB.AlquilerDB" />
<%-- 
    Document   : modificarAlquiler
    Created on : May 21, 2016, 5:57:21 PM
    Author     : Marvin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if (request.getParameter("cmd") == null) {
        alquilerDB.obtenerAlquileres();
    } else {
        if (request.getParameter("cmd").equals("actualizar")) {
            if (request.getParameter("codigotxt")
                    != null && request.getParameter("numerotxt")
                    != null && request.getParameter("fechaalquilertxt")
                    != null && request.getParameter("fechadevoluciontxt")
                    != null && request.getParameter("valoralquilertxt")
                    != null && request.getParameter("cantidadtxt")
                    != null) {
                if (!request.getParameter("codigotxt").isEmpty()
                        && !request.getParameter("numerotxt").isEmpty()
                        && !request.getParameter("fechaalquilertxt").isEmpty()
                        && !request.getParameter("fechadevoluciontxt").isEmpty()
                        && !request.getParameter("valoralquilertxt").isEmpty()
                        && !request.getParameter("cantidadtxt").isEmpty()) {
                    String codigo = request.getParameter("codigotxt");
                    String numero = request.getParameter("numerotxt");
                    String fechaAlquiler = request.getParameter("fechaalquilertxt");
                    String fechaDevolucion = request.getParameter("fechadevoluciontxt");
                    String valoralquiler = request.getParameter("valoralquilertxt");
                    String cantidad = request.getParameter("cantidadtxt");

                    if (alquilerDB.actualizar(codigo, numero, fechaAlquiler, fechaDevolucion, valoralquiler, cantidad)) {
                        out.print("<strong>Guardado</strong>");
                        alquilerDB.obtenerAlquileres();
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
        <title>Modificar Alquiler</title>
        <script type="text/javascript">
            function asignarAccion(accion) {
                document.forms['alquilerfrm'].cmd.value = accion;
            }
        </script>
    </head>
    
    <body background="imagen9.jpg" align="center">
        <h1 style="color: yellow">SELECCIONE EL ALQUILER A ACTUALIZAR</h1>
        <form id="alquilerfrm">
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
                                        <th style="color: blue">Codigo Alquiler</th>
                                        <th style="color: blue">Numero Membresia</th>
                                        <th style="color: blue" style="font-size:20px">Fecha Alquiler</th>
                                        <th style="color: blue" style="font-size:20px">Fecha Devolucion</th>
                                        <th style="color: blue" style="font-size:20px">Valor Alquiler</th>
                                        <th style="color: blue" style="font-size:20px">Cantidad</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        for (Alquiler alquiler : alquilerDB.getAlquileres()) {
                                    %>
                                    <tr>
                                        <td><%=alquiler.codigo%></td>
                                        <td><%=alquiler.numeroMembresia%></td>
                                        <td><%=alquiler.fechaAlquiler%></td>
                                        <td><%=alquiler.fechaDevolucion%></td>
                                        <td><%=alquiler.valorAlquiler%></td>
                                        <td><%=alquiler.cantidad%></td>

                                    </tr>
                                    <%
                                        }
                                    %>
                                    <tr>
                                        <td><input type="button" value="back" onClick="location.href = 'gestionarAlq.jsp'" style='width:150px; height:30px'/></td>
                                    </tr>
                                </tbody>
                            </table></td>
                        <td> <table border="2" width="30" align="center" cellspacing="30" >
                                <tbody>
                                    <tr>
                                        <td style="color:springgreen" >Codigo Alquiler</td>
                                        <td><input type="text" name="codigotxt" value="" style="font-size:20px"/></td>
                                    </tr>
                                    <tr>
                                        <td style="color:springgreen">Numero Membresia</td>
                                        <td><input type="text" name="numerotxt" value="" style="font-size:20px"/></td>
                                    </tr>
                                    <tr>
                                        <td style="color:springgreen">Fecha Alquiler</td>
                                        <td><input type="text" name="fechaalquilertxt" value="" style="font-size:20px"/></td>
                                    </tr>
                                    <tr>
                                        <td style="color:springgreen">Fecha Devolucion</td>
                                        <td><input type="text" name="fechadevoluciontxt" value="" style="font-size:20px"/></td>
                                    </tr>
                                    <tr>
                                        <td style="color:springgreen">Valor Alquiler</td>
                                        <td><input type="text" name="valoralquilertxt" value="0" style="font-size:20px"/></td>
                                    </tr>
                                    <tr>
                                        <td style="color:springgreen">Cantidad</td>
                                        <td><input type="text" name="cantidadtxt" value="0" style="font-size:20px"/></td>
                                    </tr>
                                    <tr>
                                        <td><input type="submit" value="Actualizar" onClick="asignarAccion('actualizar')" style='width:250px; height:50px'/></td>
                                        <td><input type="button" value="Regresar" onClick="location.href = 'gestionarAlq.jsp'" style='width:250px; height:50px'/></td>
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
