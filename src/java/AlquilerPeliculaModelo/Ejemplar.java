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
public class Ejemplar {
    
    private String codigoLibro;
    private int numeroCopias;
    private Libro codigoPelicula;
    private String formato;

    public Ejemplar(String codigoCasette, int numeroCopias, Libro codigoPelicula, String formato) {
        this.codigoLibro = codigoCasette;
        this.numeroCopias = numeroCopias;
        this.codigoPelicula = codigoPelicula;
        this.formato = formato;
    }

    public String getCodigoLibro() {
        return codigoLibro;
    }

    public void setCodigoLibro(String codigoLibro) {
        this.codigoLibro = codigoLibro;
    }

    public int getNumeroCopias() {
        return numeroCopias;
    }

    public void setNumeroCopias(int numeroCopias) {
        this.numeroCopias = numeroCopias;
    }

    public Libro getCodigoPelicula() {
        return codigoPelicula;
    }

    public void setCodigoPelicula(Libro codigoPelicula) {
        this.codigoPelicula = codigoPelicula;
    }

    public String getFormato() {
        return formato;
    }

    public void setFormato(String formato) {
        this.formato = formato;
    }

    @Override
    public String toString() {
        return "Casette{" + "Codigo Casette=" + codigoLibro + ", Numero Copias=" + numeroCopias + ", Codigo Pelicula=" + codigoPelicula + ", Formato=" + formato + '}';
    }
       
}
