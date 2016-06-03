<%@page import="AlquilerLibroModelo.Cliente" %>
<%@page import="AlquilerLibroModelo.Alquiler" %>
<jsp:useBean id="clienteDB" scope="session" class="AlquilerLibroDB.ClienteDB" />
<jsp:useBean id="alquilerDB" scope="session" class="AlquilerLibroDB.AlquilerDB" />

<%-- 
    Document   : consultarAlquiler
    Created on : May 21, 2016, 3:32:41 PM
    Author     : Marvin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    if (request.getParameter("cmd") == null) {
        //clienteDB.obtenerClientes();
        alquilerDB.obtenerAlquileres();
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consulta Alquiler</title>
        <script type="text/javascript">
            function asignarAccion(accion) {
                document.forms['alquilerfrm'].cmd.value = accion;
            }
        </script>
    </head>
    
    <body background="imagen9.jpg" align="center">
        <h1>TABLA DE ALQUILERES EN EL SISTEMA</h1>
        <form action="validar.jsp" method="POST" id="alquilerfrm">
            <table border="2" width="70" align="center" cellspacing="30">
                <thead>
                    <tr>
                        <th style="color: red">Codigo Alquiler</th>
                        <th style="color: red" style="font-size:20px">Fecha Alquiler</th>
                        <th style="color: red" style="font-size:20px">Fecha Devolucion</th>
                        <th style="color: red" style="font-size:20px">Valor Alquiler</th>
                        <th style="color: red" style="font-size:20px">Cantidad</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        for (Alquiler alquiler : alquilerDB.getAlquileres()) {
                    %>
                    <tr>
                        <td><%=alquiler.codigo%></td>
                        <td><%=alquiler.fechaAlquiler%></td>
                        <td><%=alquiler.fechaDevolucion%></td>
                        <td><%=alquiler.cantidad%></td>
                        <td><%=alquiler.valorAlquiler%></td>
                       
                        
                    </tr>
                    <%
                        }
                    %>
                    <tr>
                        <td><input type="button" value="back" onClick="location.href = 'gestionarAlq.jsp'" style='width:150px; height:30px'/></td>
                    </tr>
                </tbody>
            </table>

        </form>
    </body>
</html>
