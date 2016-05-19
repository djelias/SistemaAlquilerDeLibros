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
public class Casette {
    
    private String codigoCasette;
    private int numeroCopias;
    private Pelicula codigoPelicula;
    private String formato;

    public Casette(String codigoCasette, int numeroCopias, Pelicula codigoPelicula, String formato) {
        this.codigoCasette = codigoCasette;
        this.numeroCopias = numeroCopias;
        this.codigoPelicula = codigoPelicula;
        this.formato = formato;
    }

    public String getCodigoCasette() {
        return codigoCasette;
    }

    public void setCodigoCasette(String codigoCasette) {
        this.codigoCasette = codigoCasette;
    }

    public int getNumeroCopias() {
        return numeroCopias;
    }

    public void setNumeroCopias(int numeroCopias) {
        this.numeroCopias = numeroCopias;
    }

    public Pelicula getCodigoPelicula() {
        return codigoPelicula;
    }

    public void setCodigoPelicula(Pelicula codigoPelicula) {
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
        return "Casette{" + "Codigo Casette=" + codigoCasette + ", Numero Copias=" + numeroCopias + ", Codigo Pelicula=" + codigoPelicula + ", Formato=" + formato + '}';
    }
       
}
