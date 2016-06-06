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
public class TipoLibro {
    
    public String idTipoLibro;
    public String categoria;
    public String idioma;

   
    
    
    
    public TipoLibro(String idTipoLibro, String categoria, String idioma) {
        this.idTipoLibro = idTipoLibro;
        this.categoria = categoria;
        this.idioma = idioma;
    }
   
    public TipoLibro() {
        
    }
    
    
    
    
     public String getIdTipoLibro() {
        return idTipoLibro;
    }

    public void setIdTipoLibro(String idTipoLibro) {
        this.idTipoLibro = idTipoLibro;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public String getIdioma() {
        return idioma;
    }

    public void setIdioma(String idioma) {
        this.idioma = idioma;
    }
    
    @Override
    public String toString() {
        return "" + "" + idTipoLibro ;
    }
}
