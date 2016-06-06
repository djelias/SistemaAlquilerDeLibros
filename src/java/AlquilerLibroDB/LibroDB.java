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
import java.util.logging.Level;
import java.util.logging.Logger;

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
                libro.idTipo = TipoLibroDB.obtenerTipoLibro(resultado.getString("idtipolibro"));
                libro.autor = resultado.getString("autor");
                libro.titulo = resultado.getString("titulo");
                
                libros.add(libro);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
    
    public static Libro obtenerLibro(String codigolibro) {         
         Libro libro = null;         
         try {             
             String sentenciaSql = "SELECT * FROM libro WHERE codigolibro = ?";             
             PreparedStatement statement = Conexion.getConexion().prepareStatement(sentenciaSql);             
             statement.setString(1, codigolibro);             
             ResultSet resultado = statement.executeQuery();            
             while (resultado.next()) {                 
                 libro = new Libro();                 
                 libro.codigoL = resultado.getString("codigolibro");                 
                 libro.idTipo = TipoLibroDB.obtenerTipoLibro(resultado.getString("idtipolibro")); 
                 libro.autor=resultado.getString("autor");
                 libro.titulo=resultado.getString("titulo");
             }  
        } catch (SQLException ex) {             
            ex.printStackTrace();         
        }         
         return libro;     
     } 

    public boolean guardar(String codigo, String tipo, String autor, String titulo) {
        boolean guardado = true;
        try {
            String sentenciaSql;
            PreparedStatement preparedStatement;
            sentenciaSql = "INSERT INTO libro(codigolibro, idtipolibro, autor, titulo) VALUES "
                    + "(?,?,?,?)";
            preparedStatement = Conexion.getConexion().prepareStatement(sentenciaSql);
            preparedStatement.setString(1, codigo);
            preparedStatement.setString(2, tipo);
            preparedStatement.setString(3, autor);
            preparedStatement.setString(4, titulo);
            
            preparedStatement.execute();
        } catch (SQLException ex) {
            guardado = false;
            ex.printStackTrace();
        }
        return guardado;
    }
 public boolean actualizar(String codigo, String tipo, String autor, String titulo){
        boolean actu = true;
        try {
            int a;
            String sentenciaSql = "UPDATE libro SET idtipolibro = ?, autor = ? , titulo = ?  WHERE codigolibro = ?";
            PreparedStatement preparedStatement = Conexion.getConexion().prepareStatement(sentenciaSql);
            preparedStatement.setString(1,tipo);            
            preparedStatement.setString(2, autor);
            preparedStatement.setString(3,titulo);
             preparedStatement.setString(4,codigo);
            a = preparedStatement.executeUpdate();
            if(a > 0)
                actu = true;
            else
                actu = false;
        } catch (SQLException ex) {
            Logger.getLogger(LibroDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return actu;
    }
    /**
     * @return the carreras
     */
    public List<Libro> getLibros() {
        return libros;
    }

    /**
     * @param libros
     */
    public void setLibros(List<Libro> libros) {
        this.libros = libros;
    }
}
