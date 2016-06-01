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
    /*private List<Alquiler> alquileres = new ArrayList<Alquiler>();

    public void obtenerAlquileres() {
        alquileres.clear();
        try {
            String sentenciaSql = "SELECT * FROM alquiler";
            Statement statement = Conexion.getConexion().createStatement();
            ResultSet resultado = statement.executeQuery(sentenciaSql);
            while (resultado.next()) {
                Alquiler alquiler = new Alquiler();
                alquiler.codigo = resultado.getString("codigo");
                alquiler.fechaAlquiler = resultado.getString("fechaAlquiler");
                alquiler.fechaDevolucion = resultado.getString("fechaDevolucion");
                alquiler.valorAlquiler = resultado.getString("valorAlquiler");
                alquiler.cantidad = resultado.getString("cantidad");
                alquiler.ejemplar = EjemplarDB.obtenerEjemplar(resultado.getString("codigoEjemplar"));
                alquiler.cliente = ClienteDB.obtenerCliente(resultado.getString("numeroMembresia"));
                alquileres.add(alquiler);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    public boolean guardar(String codigo, String fechaAlquiler, String fechaDevolucion, String valorAlquiler, String cantidad, String codigoEjemplar, String numeroMembresia) {
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
    }

    /**
     * @return the carreras
     */
    /*public List<Alquiler> getAlquileres() {
        return alquileres;
    }*/

    /**
     * @param alquiler the alquileres to set
     */
   /* public void setAlquileres(List<Alquiler> alquileres) {
        this.alquileres = alquileres;
    }*/
}
