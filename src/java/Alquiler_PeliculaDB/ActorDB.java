/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Alquiler_PeliculaDB;

import AlquilerPeliculaModelo.Actor;
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
public class ActorDB {
   /* private List<Actor> actores = new ArrayList<Actor>();

    public void obtenerActores() {
        getActores().clear();
        try {
            String sentenciaSql = "SELECT * FROM actor";
            Statement statement = Conexion.getConexion().createStatement();
            ResultSet resultado = statement.executeQuery(sentenciaSql);
            while (resultado.next()) {
                Actor actor = new Actor();
                actor.codigoAc = resultado.getString("idactor");
                actor.nombreAc= resultado.getString("nomactor");
                actor.fechaNacimiento=resultado.getString("fechnacimiento");
                getActores().add(actor);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    public static Actor obtenerActor(String idactor) {
        Actor actor = null;
        try {
            String sentenciaSql = "SELECT * FROM actor WHERE idactor = ?";
           / PreparedStatement statement
                    = Conexion.getConexion().prepareStatement(sentenciaSql);
            statement.setString(1, idactor);
            ResultSet resultado = statement.executeQuery();
            while (resultado.next()) {
                actor = new Actor();
                actor.codigoAc = resultado.getString("idactividad");
                actor.nombreAc= resultado.getString("nomactor");
                actor.fechaNacimiento=resultado.getString("fechnacimiento");
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return actor;
    }

    public List<Actor> getActores() {
        return actores;
    }

    public void setActores(List<Actor> actores) {
        this.actores = actores;
    }*/
}
