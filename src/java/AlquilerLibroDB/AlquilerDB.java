/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package AlquilerLibroDB;

import AlquilerLibroModelo.Alquiler;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Marvin
 */
public class AlquilerDB {
    private List<Alquiler> alquileres = new ArrayList<Alquiler>();

    public void obtenerAlquileres() {
        alquileres.clear();
        try {
            String sentenciaSql = "SELECT * FROM alquiler";
            Statement statement = Conexion.getConexion().createStatement();
            ResultSet resultado = statement.executeQuery(sentenciaSql);
            while (resultado.next()) {
                Alquiler alquiler = new Alquiler();
                alquiler.codigo = resultado.getString("codigoalquiler");
                alquiler.numeroMembresia=resultado.getString("numeromembresia");
                alquiler.fechaAlquiler = resultado.getString("fechaAlquiler");
                alquiler.fechaDevolucion = resultado.getString("fechaDevolucion");
                alquiler.valorAlquiler = resultado.getString("valorAlquiler");
                alquiler.cantidad = resultado.getString("cantidad");
                
                
                //alquiler.ejemplar = EjemplarDB.obtenerEjemplar(resultado.getString("codigoEjemplar"));
                //alquiler.cliente = ClienteDB.obtenerCliente(resultado.getString("numeroMembresia"));
                alquileres.add(alquiler);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    
    public static Alquiler obtenerAlquiler(String codigoalquiler) {         
         Alquiler alquiler = null;         
         try {             
             String sentenciaSql = "SELECT * FROM alquiler WHERE codigoalquiler = ?";             
             PreparedStatement statement = Conexion.getConexion().prepareStatement(sentenciaSql);             
             statement.setString(1, codigoalquiler);             
             ResultSet resultado = statement.executeQuery();            
             while (resultado.next()) {                 
                 alquiler = new Alquiler();       
                 alquiler.codigo=resultado.getString("codigoalquiler");
                 alquiler.numeroMembresia = resultado.getString("numeromembresia");
                 alquiler.fechaAlquiler = resultado.getString("fechaalquiler");
                 alquiler.fechaDevolucion = resultado.getString("fechadevolucion");
                 alquiler.valorAlquiler = resultado.getString("valoralquiler");
                 alquiler.cantidad = resultado.getString("cantidad");
                 
             }  
        } catch (SQLException ex) {             
            ex.printStackTrace();         
        }         
         return alquiler;     
     }
    
    public boolean guardar(String codigo, String numeroMembresia, String fechaAlquiler, String fechaDevolucion, String valorAlquiler, String cantidad) {
        boolean guardado = true;
        try {
            String sentenciaSql;
            PreparedStatement preparedStatement;
            sentenciaSql = "INSERT INTO alquiler(codigoalquiler, numeromembresia, fechaalquiler, fechadevolucion, valoralquiler, cantidad) VALUES "
                    + "(?,?,?,?,?,?)";
            preparedStatement = Conexion.getConexion().prepareStatement(sentenciaSql);
            preparedStatement.setString(1, codigo);
            preparedStatement.setString(2, numeroMembresia);
            preparedStatement.setString(3, fechaAlquiler);
            preparedStatement.setString(4, fechaDevolucion);
            preparedStatement.setString(5, valorAlquiler);
            preparedStatement.setString(6, cantidad);
            
            preparedStatement.execute();
        } catch (SQLException ex) {
            guardado = false;
            ex.printStackTrace();
        }
        return guardado;
    }
    
    public boolean actualizar(String codigo, String numeroMembresia, String fechaAlquiler, String fechaDevolucion, String valorAlquiler, String cantidad) {
        
        boolean actualizado = true;
        
        try {  

            String sentenciaSql = "UPDATE alquiler SET numeromembresia = ?, fechaalquiler = ?, fechadevolucion = ?, valoralquiler = ?, cantidad = ? WHERE codigoalquiler = ?";
            
            PreparedStatement updateAlquiler = Conexion.getConexion().prepareStatement(sentenciaSql);
            updateAlquiler.setString(6, codigo);
            updateAlquiler.setString(1, numeroMembresia);
            updateAlquiler.setString(2, fechaAlquiler);
            updateAlquiler.setString(3, fechaDevolucion);
            updateAlquiler.setString(4, valorAlquiler);
            updateAlquiler.setString(5, cantidad);
                               
            updateAlquiler.executeUpdate();
            
        } catch (SQLException ex) {
            actualizado = false;
            ex.printStackTrace();
        }
        return actualizado;
    }

    /**
     * @return the carreras
     */
    public List<Alquiler> getAlquileres() {
        return alquileres;
    }

    /**
     * @param alquiler the alquileres to set
     */
    public void setAlquileres(List<Alquiler> alquileres) {
        this.alquileres = alquileres;
    }
}
