/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package AlquilerPeliculaModelo;

/**
 *
 * @author Marvin
 */
public class Pelicula {
    
    public Actor actor;
    public TipoPelicula tipopelicula;

    public Pelicula(Actor actor, TipoPelicula tipopelicula) {
        this.actor = actor;
        this.tipopelicula = tipopelicula;
    }

    public Actor getActor() {
        return actor;
    }

    public void setActor(Actor actor) {
        this.actor = actor;
    }

    public TipoPelicula getTipopelicula() {
        return tipopelicula;
    }

    public void setTipopelicula(TipoPelicula tipopelicula) {
        this.tipopelicula = tipopelicula;
    }

    @Override
    public String toString() {
        return "Pelicula{" + "Actor=" + actor + ", Tipo Pelicula=" + tipopelicula + '}';
    }
    
}
