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
    
    public String autor;
    public TipoLibro idTipo;
    public String codigoL;
    public String titulo;

    public Libro() {
    }

    public Libro(String autor, TipoLibro idTipo, String codigoL, String titulo) {
        this.autor = autor;
        this.idTipo = idTipo;
        this.codigoL = codigoL;
        this.titulo = titulo;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public TipoLibro getIdTipo() {
        return idTipo;
    }

    public void setIdTipo(TipoLibro idTipo) {
        this.idTipo = idTipo;
    }

    public String getCodigoL() {
        return codigoL;
    }

    public void setCodigoL(String codigoL) {
        this.codigoL = codigoL;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    @Override
    public String toString() {
        return "Libro{" + "autor=" + autor + ", idTipo=" + idTipo + ", codigoL=" + codigoL + ", titulo=" + titulo + '}';
    }
    
    
    
}
