<%-- 
    Document   : menu
    Created on : May 18, 2016, 12:57:36 PM
    Author     : Marvin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu de Administrador</title>
    </head>
    <body>
        <script language="JavaScript">
function newPage(url){
window.open(url,"","algun parametro que desees");
}
</script>
        <body background="book11.jpg">
        <h1 align="center" style="color:red;">MENU PARA ADMINISTRADOR</h1>
        <form action="validar.jsp"  method="POST">
                <table border="0" width="20" align="center" cellspacing="30">
                    <tbody>
                        <tr>
                            <td></td>
                            <td><input type="button" value="Gestionar Libros" style='width:300px; height:50px' onClick="location.href = 'gestionar.jsp'"/></td>
                        </tr>
                        
                        <tr>
                            <td></td>
                            <td><input type="button" value="Gestionar Alquileres" style='width:300px; height:50px' onClick="location.href = 'gestionarAlq.jsp'"/></td>
                        </tr>
                        
                        <tr>
                            <td></td>
                            <td><input type="button"  value="Salir" style='width:300px; height:50px' onClick="location.href = 'index.jsp'" /></td>
                        </tr>
                    </tbody>
                </table>

        </form>
        
    </body>
</html>
