<%-- 
    Document   : login
    Created on : May 18, 2016, 12:56:39 PM
    Author     : Marvin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login de Usuarios</title>
    </head>
    <body>
        <form action="validar.jsp" method="POST">
            <table border="1" align="center">
                <tbody>
                    <tr>
                        <td>Usuario</td>
                        <td><input type="text" name="fNombre" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="fPassword" value="" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Enter" /></td>
                    </tr>
                </tbody>
            </table>

        </form>
    </body>
</html>
