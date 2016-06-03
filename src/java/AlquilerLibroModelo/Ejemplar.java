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
public class Ejemplar {
    
    public String codigoEjemplar;
    public String numeroCopias;
    public Libro codigoL;
    public String descripcion;

    public Ejemplar(String codigoEjemplar, String numeroCopias, Libro codigoL, String descripcion) {
        this.codigoEjemplar = codigoEjemplar;
        this.numeroCopias = numeroCopias;
        this.codigoL = codigoL;
        this.descripcion = descripcion;
    }

    public Ejemplar() {
    }

    public String getCodigoEjemplar() {
        return codigoEjemplar;
    }

    public void setCodigoEjemplar(String codigoEjemplar) {
        this.codigoEjemplar = codigoEjemplar;
    }

    public String getNumeroCopias() {
        return numeroCopias;
    }

    public void setNumeroCopias(String numeroCopias) {
        this.numeroCopias = numeroCopias;
    }

    public Libro getCodigoL() {
        return codigoL;
    }

    public void setCodigoL(Libro codigoL) {
        this.codigoL = codigoL;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    @Override
    public String toString() {
        return "Ejemplar{" + "codigoEjemplar=" + codigoEjemplar + ", numeroCopias=" + numeroCopias + ", codigoL=" + codigoL + ", descripcion=" + descripcion + '}';
    }

   
    
    
   

    
}
