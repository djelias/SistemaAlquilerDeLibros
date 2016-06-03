/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 *idtipolibro categoria idioma
 */

package AlquilerLibroDB;

import AlquilerLibroModelo.TipoLibro;
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
public class TipoLibroDB {
   private List<TipoLibro> tiposLibros = new ArrayList<TipoLibro>();

    public void obtenerTiposLibros() {
        getTiposLibros().clear();
        try {
            String sentenciaSql = "SELECT * FROM tipolibro";
            Statement statement = Conexion.getConexion().createStatement();
            ResultSet resultado = statement.executeQuery(sentenciaSql);
            while (resultado.next()) {
                TipoLibro tipoLibro = new TipoLibro();
                tipoLibro.idTipoLibro = resultado.getString("idtipolibro");
                tipoLibro.categoria = resultado.getString("categoria");
                tipoLibro.idioma = resultado.getString("idioma");
                getTiposLibros().add(tipoLibro);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    public static TipoLibro obtenerTipoLibro(String idTipoLibro) {
        TipoLibro tipoLibro = null;
        try {
            String sentenciaSql = "SELECT * FROM tipolibro WHERE idtipolibro = ?";
            PreparedStatement statement = Conexion.getConexion().prepareStatement(sentenciaSql);
            statement.setString(1, idTipoLibro);
            ResultSet resultado = statement.executeQuery();
            while (resultado.next()) {
                tipoLibro = new TipoLibro();
                tipoLibro.idTipoLibro = resultado.getString("idtipolibro");
                tipoLibro.categoria = resultado.getString("categoria");
                tipoLibro.idioma = resultado.getString("idioma");
                
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return tipoLibro;
    }

    public List<TipoLibro> getTiposLibros() {
        return tiposLibros;
    }

    public void setTiposLibros(List<TipoLibro> tiposLibros) {
        this.tiposLibros = tiposLibros;
    }
}
