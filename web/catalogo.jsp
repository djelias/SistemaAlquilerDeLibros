<%-- 
    Document   : catalogo
    Created on : May 20, 2016, 10:32:25 PM
    Author     : Marvin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Catalogo</title>
    </head>
    <body>
        <body background="stark.jpg" align="center">
            <h1 style="color: white">CATALOGO DE LIBROS</h1>
        <form action="validar.jsp" method="POST">
            <table border="5" cellspacing="10">
                <thead>
                    <tr>
                        <th style="color: red">Informatica</th>
                        <th style="color: red">Marketing</th>
                        <th style="color: red">Ciencia Ficcion</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><table border="5" cellspacing="10">
                                <tbody>
                                    <tr>
                                        <td><img src="libro1.jpg" width="310" height="400" alt="libro1"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><input type="button" value="Ver Detalle" align="center"/></td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                        <td><table border="5" cellspacing="10">
                                <tbody>
                                    <tr>
                                        <td><img src="libro4.jpg" width="366" height="398" alt="libro4"/>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td><input type="button" value="Ver Detalle" /></td>
                                    </tr>
                                </tbody>
                            </table></td>
                        <td><table border="5" cellspacing="10">
                                <tbody>
                                    <tr>
                                        <td><img src="libro6.jpg" width="249" height="426" alt="libro6"/>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td><input type="button" value="Ver Detalle" /></td>
                                    </tr>
                                </tbody>
                            </table></td>
                    </tr>
                    <tr>
                        <td><table border="5" cellspacing="10">
                                <tbody>
                                    <tr>
                                        <td><img src="libro2.jpg" width="298" height="399" alt="libro2"/></td>
                                    </tr>
                                    <tr>
                                        <td><input type="button" value="Ver Detalle" /></td>
                                    </tr>
                                </tbody>
                            </table></td>
                        <td><table border="5" cellspacing="10">
                                <tbody>
                                    <tr>
                                        <td><img src="libro5.jpg" width="366" height="398" alt="libro5"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><input type="button" value="Ver Detalle" /></td>
                                    </tr>
                                </tbody>
                            </table></td>
                        <td><table border="5" cellspacing="10">
                                <thead>
                                    <tr>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><img src="libro7.jpg" width="249" height="426" alt="libro7"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><input type="button" value="Ver Detalle" /></td>
                                    </tr>
                                </tbody>
                            </table></td>
                    </tr>
                </tbody>
            </table>

        </form>
    </body>
</html>
