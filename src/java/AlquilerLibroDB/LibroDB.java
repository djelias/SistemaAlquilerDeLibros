/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package AlquilerLibroDB;

import AlquilerLibroModelo.Libro;
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
public class LibroDB {
    private List<Libro> libros = new ArrayList<Libro>();

    public void obtenerLibros() {
        libros.clear();
        try {
            String sentenciaSql = "SELECT * FROM libro";
            Statement statement = Conexion.getConexion().createStatement();
            ResultSet resultado = statement.executeQuery(sentenciaSql);
            while (resultado.next()) {
                Libro libro = new Libro();
                libro.codigoL = resultado.getString("codigolibro");
                //libro.idTipo = TipoLibroDB.obtenerTipoLibro(resultado.getString("idtipolibro"));
                libro.autor = resultado.getString("autor");
                libro.titulo = resultado.getString("titulo");
                
                libros.add(libro);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    public boolean guardar(String codigoL, String idtipolibro, String autor, String titulo) {
        boolean guardado = true;
        try {
            String sentenciaSql;
            PreparedStatement preparedStatement;
            sentenciaSql = "INSERT INTO libro(codigolibro, idtipolibro, autor, titulo) VALUES "
                    + "(?,?,?,?)";
            preparedStatement = Conexion.getConexion().prepareStatement(sentenciaSql);
            preparedStatement.setString(1, codigoL);
            preparedStatement.setString(2, idtipolibro);
            preparedStatement.setString(3, autor);
            preparedStatement.setString(4, titulo);
            
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
    public List<Libro> getLibros() {
        return libros;
    }

    /**
     * @param libro the alquileres to set
     */
    public void setLibros(List<Libro> libros) {
        this.libros = libros;
    }
}
