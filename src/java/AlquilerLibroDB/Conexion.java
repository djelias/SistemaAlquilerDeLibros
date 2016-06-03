/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package AlquilerLibroDB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Marvin
 */
public class Conexion {
    private static Connection con;
    private static void conectar() {
 /*
 * Si la conexión ya se ha realizado, solo devolverá la conexión
 * Si no se ha realizado, realizará la conexión y la devolverá
 */
 try {

 Class.forName("org.postgresql.Driver").newInstance();
 con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres", "admin");
 } catch (SQLException | ClassNotFoundException
 | InstantiationException | IllegalAccessException ex) {
 Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
 }
}
 

 public static Connection getConexion(){
 if(con == null){
 conectar();
 }
 return con;
 }
}
