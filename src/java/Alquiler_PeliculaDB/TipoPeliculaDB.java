/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Alquiler_PeliculaDB;

import AlquilerPeliculaModelo.TipoLibro;
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
public class TipoPeliculaDB {
   /* private List<TipoPelicula> tiposPeliculas = new ArrayList<TipoPelicula>();

    public void obtenerTiposPeliculas() {
        getTiposPeliculas().clear();
        try {
            String sentenciaSql = "SELECT * FROM tipopelicula";
            Statement statement = Conexion.getConexion().createStatement();
            ResultSet resultado = statement.executeQuery(sentenciaSql);
            while (resultado.next()) {
                TipoLibro tipoPelicula = new TipoLibro();
                tipoPelicula.titulo = resultado.getString("titulo");
                tipoPelicula.categoria= resultado.getString("categoria");
                getTiposPeliculas().add(tipoPelicula);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    public static TipoLibro obtenerTipoPelicula(String titulo) {
        TipoLibro tipoPelicula = null;
        try {
            String sentenciaSql = "SELECT * FROM tipopelicula WHERE tituto = ?";
            PreparedStatement statement
                    = Conexion.getConexion().prepareStatement(sentenciaSql);
            statement.setString(1, titulo);
            ResultSet resultado = statement.executeQuery();
            while (resultado.next()) {
                tipoPelicula = new TipoLibro();
                tipoPelicula.titulo = resultado.getString("titulo");
                tipoPelicula.categoria= resultado.getString("categoria");
                
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return tipoPelicula;
    }

    public List<TipoPelicula> getTiposPeliculas() {
        return tiposPeliculas;
    }

    public void setTiposPeliculas(List<TipoPelicula> tiposPeliculas) {
        this.tiposPeliculas = tiposPeliculas;
    }*/
}
