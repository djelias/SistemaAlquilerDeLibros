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
public class Libro {
    
    public String autor;
    public TipoLibro tipopelicula;

    public Libro(String actor, TipoLibro tipopelicula) {
        this.autor = actor;
        this.tipopelicula = tipopelicula;
    }

    public String getActor() {
        return autor;
    }

    public void setActor(String actor) {
        this.autor = actor;
    }

    public TipoLibro getTipopelicula() {
        return tipopelicula;
    }

    public void setTipopelicula(TipoLibro tipopelicula) {
        this.tipopelicula = tipopelicula;
    }

    @Override
    public String toString() {
        return "Pelicula{" + "Autor=" + autor + ", Tipo Pelicula=" + tipopelicula + '}';
    }
    
}
