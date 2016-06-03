/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package AlquilerLibroDB;

import AlquilerLibroModelo.Ejemplar;
import AlquilerLibroDB.LibroDB;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Marvin
 */
public class EjemplarDB {
    

    private List<Ejemplar> ejemplares = new ArrayList<Ejemplar>();

    public void obtenerEjemplares() {
        ejemplares.clear();
        try {
            String sentenciaSql = "SELECT * FROM ejemplar";
            Statement statement = Conexion.getConexion().createStatement();
            ResultSet resultado = statement.executeQuery(sentenciaSql);
            while (resultado.next()) {
                Ejemplar ejemplar = new Ejemplar();
                ejemplar.codigoEjemplar = resultado.getString("codigoejemplar");
                ejemplar.codigoL = LibroDB.obtenerLibro(resultado.getString("codigolibro"));
                ejemplar.numeroCopias=resultado.getString("numerocopias");
                ejemplar.descripcion=resultado.getString("descrpcion");
                
                ejemplares.add(ejemplar);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    /*public boolean guardar(String codigo, String fechaAlquiler, String fechaDevolucion, String valorAlquiler, String cantidad, String codigoEjemplar, String numeroMembresia) {
        boolean guardado = true;
        try {
            String sentenciaSql;
            PreparedStatement preparedStatement;
            sentenciaSql = "INSERT INTO alquiler(codigo, numeroMembresia,fechaAlquiler, fechaDevolucion, valorAlquiler, cantidad) VALUES "
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
    }*/

    /**
     * @return the carreras
     */
    public List<Ejemplar> getEjemplares() {
        return ejemplares;
    }

    /**
     * @param alquiler the alquileres to set
     */
    public void setEjemplares(List<Ejemplar> ejemplares) {
        this.ejemplares = ejemplares;
    }
    
    
    
}
