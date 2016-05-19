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
public class TipoPelicula {
    
    public String titulo;
    public String categoria;

    public TipoPelicula(String titulo, String categoria) {
        this.titulo = titulo;
        this.categoria = categoria;
    }

    public TipoPelicula() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    @Override
    public String toString() {
        return "TipoPelicula{" + "Titulo=" + titulo + ", Categoria=" + categoria + '}';
    }
    
    
    
}
