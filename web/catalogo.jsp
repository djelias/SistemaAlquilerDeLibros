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
        <style type="text/css">

    .zoom{

        /* Aumentamos la anchura y altura durante 2 segundos */

        transition: width 2s, height 2s, transform 2s;

        -moz-transition: width 2s, height 2s, -moz-transform 2s;

        -webkit-transition: width 2s, height 2s, -webkit-transform 2s;

        -o-transition: width 2s, height 2s,-o-transform 2s;

    }

    .zoom:hover{

        /* tranformamos el elemento al pasar el mouse por encima al doble de

           su tamaño con scale(2). */

        transform : scale(1.2);

        -moz-transform : scale(1.2);      /* Firefox */

        -webkit-transform : scale(1.2);   /* Chrome - Safari */

        -o-transform : scale(1.2);        /* Opera */

    }

</style>
    </head>
    <body>
        <body background="stark.jpg" align="center">
            <h1 style="color: white">CATALOGO DE LIBROS</h1>
        <form action="validar.jsp" method="POST">
            <table border="5" cellspacing="10">
                <thead>
                    <tr>
                        <th style="color: red">INFORMATICA</th>
                        <th style="color: red">MARKETING</th>
                        <th style="color: red">CIENCIA FICCION</th>
                    </tr>
                </thead>
                <tbody>
                    <!--PRIMERA FILA!-->
                    <tr>
                        <!--COLUMNA INFORMATICA!-->
                        <td><table border="5" cellspacing="10">
                                <tbody>
                                    <tr>
                                        <td>
                                            <div style='text-align:center;'>
                                                <!--div class="zoom">Efecto de zoom con CSS3</div!-->
                                                <img class="zoom" src="libro1.jpg" align="center" />
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th style="color:white" >ID: 0000 </th>
                                    </tr>
                                    <tr>
                                        <td><input type="button" value="Ver Detalle" align="center" onClick="location.href = 'informatica1.jsp'"/></td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                        <!--COLUMNA MARKETING!-->
                        <td><table border="5" cellspacing="10">
                                <tbody>
                                    <tr>
                                        <td><!--img src="libro4.jpg" width="366" height="398" alt="libro4"/!-->
                                            <div style='text-align:center;'>
                                                <!--div class="zoom">Efecto de zoom con CSS3</div!-->
                                                <img class="zoom" src="lib4.jpg" align="center"/>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th style="color:white" >ID: 0100 </th>
                                    </tr>
                                    <tr>
                                        <td><input type="button" value="Ver Detalle" align="center" onClick="location.href = 'marketing1.jsp'"/></td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                        <!--COLUMNA CIENCIA FICCION!-->
                        <td><table border="5" cellspacing="10">
                                <tbody>
                                    <tr>
                                        <td><!--img src="libro6.jpg" width="249" height="426" alt="libro6"/!-->
                                            <div style='text-align:center;'>
                                                <!--div class="zoom">Efecto de zoom con CSS3</div!-->
                                                <img class="zoom" src="danza.jpg" align="center"/>
                                            </div>
                                        </td>
                                    </tr>
                                     <tr>
                                        <th style="color:white" >ID: 1000 </th>
                                    </tr>
                                    <tr>
                                        <td><input type="button" value="Ver Detalle" align="center" onClick="location.href = 'ficcion1.jsp'"/></td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <!--SEGUNDA FILA!-->
                    <tr>
                        <!--INFORMATICA!-->
                        <td><table border="5" cellspacing="10">
                                <tbody>
                                    <tr>
                                        <td><!--img src="libro2.jpg" width="298" height="399" alt="libro2"/!-->
                                            <div style='text-align:center;'>
                                                <!--div class="zoom">Efecto de zoom con CSS3</div!-->
                                                <img class="zoom" src="libro2.jpg" align="center"/>
                                            </div>
                                            </td>
                                    </tr>
                                    <tr>
                                        <th style="color:white" >ID: 0001 </th>
                                    </tr>
                                    <tr>
                                        <td><input type="button" value="Ver Detalle" align="center" onClick="location.href = 'informatica1.jsp'"/></td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                        <!--MARKETING!-->
                        <td><table border="5" cellspacing="10">
                                <tbody>
                                    <tr>
                                        <td><!--img src="libro5.jpg" width="366" height="398" alt="libro5"/!-->
                                            <div style='text-align:center;'>
                                                <!--div class="zoom">Efecto de zoom con CSS3</div!-->
                                                <img class="zoom" src="libro5.jpg" align="center"/>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th style="color:white" >ID: 0101 </th>
                                    </tr>
                                    <tr>
                                        <td><input type="button" value="Ver Detalle" align="center" onClick="location.href = 'marketing2.jsp'"/></td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                        <!--CIENCIA FICCION!-->
                        <td><table border="5" cellspacing="10">
                                <tbody>
                                    <tr>
                                        <td><!--img src="libro7.jpg" width="249" height="426" alt="libro7"/!-->
                                            <div style='text-align:center;'>
                                                <!--div class="zoom">Efecto de zoom con CSS3</div!-->
                                                <img class="zoom" src="libro7.jpg" align="center"/>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th style="color:white" >ID: 1001 </th>
                                    </tr>
                                    <tr>
                                        <td><input type="button" value="Ver Detalle" align="center" onClick="location.href = 'ficcion2.jsp'"/></td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <!--TERCER FILA!-->
                    <tr>
                        <!--INFORMATICA!-->
                        <td><table border="5" cellspacing="10">
                                <tbody>
                                    <tr>
                                        <td><!--img src="libro2.jpg" width="298" height="399" alt="libro2"/!-->
                                            <div style='text-align:center;'>
                                                <!--div class="zoom">Efecto de zoom con CSS3</div!-->
                                                <img class="zoom" src="lib2.jpg" align="center"/>
                                            </div>
                                            </td>
                                    </tr>
                                    <tr>
                                        <th style="color:white" >ID: 0010 </th>
                                    </tr>
                                    <tr>
                                        <td><input type="button" value="Ver Detalle" align="center" onClick="location.href = 'informatica3.jsp'"/></td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                        <!--MARKETING!-->
                        <td><table border="5" cellspacing="10">
                                <tbody>
                                    <tr>
                                        <td><!--img src="libro5.jpg" width="366" height="398" alt="libro5"/!-->
                                            <div style='text-align:center;'>
                                                <!--div class="zoom">Efecto de zoom con CSS3</div!-->
                                                <img class="zoom" src="lib5.jpg" align="center"/>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th style="color:white" >ID: 0110 </th>
                                    </tr>
                                    <tr>
                                        <td><input type="button" value="Ver Detalle" align="center" onClick="location.href = 'marketing3.jsp'"/></td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                        <!--CIENCIA FICCION!-->
                        <td><table border="5" cellspacing="10">
                                <tbody>
                                    <tr>
                                        <td><!--img src="libro7.jpg" width="249" height="426" alt="libro7"/!-->
                                            <div style='text-align:center;'>
                                                <!--div class="zoom">Efecto de zoom con CSS3</div!-->
                                                <img class="zoom" src="lib6.jpg" align="center"/>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th style="color:white" >ID: 1010 </th>
                                    </tr>
                                    <tr>
                                        <td><input type="button" value="Ver Detalle" align="center" onClick="location.href = 'ficcion3.jsp'"/></td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <!--CUARTA COLUMNA!-->
                    <tr>
                        <!--INFORMATICA!-->
                        <td><table border="5" cellspacing="10">
                                <tbody>
                                    <tr>
                                        <td><!--img src="libro2.jpg" width="298" height="399" alt="libro2"/!-->
                                            <div style='text-align:center;'>
                                                <!--div class="zoom">Efecto de zoom con CSS3</div!-->
                                                <img class="zoom" src="lib3.jpg" align="center"/>
                                            </div>
                                            </td>
                                    </tr>
                                    <tr>
                                        <th style="color:white" >ID: 0011 </th>
                                    </tr>
                                    <tr>
                                        <td><input type="button" value="Ver Detalle" align="center" onClick="location.href = 'informatica4.jsp'"/></td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                        <!--MARKETING!-->
                        <td><table border="5" cellspacing="10">
                                <tbody>
                                    <tr>
                                        <td><!--img src="libro5.jpg" width="366" height="398" alt="libro5"/!-->
                                            <div style='text-align:center;'>
                                                <!--div class="zoom">Efecto de zoom con CSS3</div!-->
                                                <img class="zoom" src="lib7.jpg" align="center"/>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th style="color:white" >ID: 0111 </th>
                                    </tr>
                                    <tr>
                                        <td><input type="button" value="Ver Detalle" align="center" onClick="location.href = 'marketing4.jsp'"/></td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                        <!--CIENCIA FICCION!-->
                        <td><table border="5" cellspacing="10">
                                <tbody>
                                    <tr>
                                        <td><!--img src="libro7.jpg" width="249" height="426" alt="libro7"/!-->
                                            <div style='text-align:center;'>
                                                <!--div class="zoom">Efecto de zoom con CSS3</div!-->
                                                <img class="zoom" src="lib9.jpg" align="center"/>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th style="color:white" >ID: 1011 </th>
                                    </tr>
                                    <tr>
                                        <td><input type="button" value="Ver Detalle" align="center" onClick="location.href = 'ficcion4.jsp'"/></td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>

        </form>
    </body>
</html>
