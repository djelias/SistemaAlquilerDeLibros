/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package AlquilerLibroModelo;

/**
 *
 * @author Marvin
 */
public class Libro {
    
    public String codigoL;
      public TipoLibro idTipo;
      public String autor;
    public String titulo;

    public Libro() {
    }

    public Libro(String codigoL, TipoLibro idTipo, String autor, String titulo) {
        this.codigoL = codigoL;
        this.idTipo = idTipo;
        this.autor = autor;
        this.titulo = titulo;
    }

    public String getCodigoL() {
        return codigoL;
    }

    public void setCodigoL(String codigoL) {
        this.codigoL = codigoL;
    }

    public TipoLibro getIdTipo() {
        return idTipo;
    }

    public void setIdTipo(TipoLibro idTipo) {
        this.idTipo = idTipo;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    @Override
    public String toString() {
        return "Libro{" + "codigoL=" + codigoL + ", idTipo=" + idTipo + ", autor=" + autor + ", titulo=" + titulo + '}';
    }

}
