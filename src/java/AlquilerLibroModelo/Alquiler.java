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
public class Alquiler {
    
    public String codigo;
    public Ejemplar codigoLibro;
    public Cliente numeroMembresia;
    public String fechaAlquiler;
    public String fechaDevolucion;
    public String valorAlquiler;
    public String cantidad;

    public Alquiler() {
    }

    public Alquiler(String codigo, Ejemplar codigoEjemplar, Cliente numeroMembresia, String fechaAlquiler, String fechaDevolucion, String valorAlquiler, String cantidad) {
        this.codigo = codigo;
        this.codigoLibro = codigoLibro;
        this.numeroMembresia = numeroMembresia;
        this.fechaAlquiler = fechaAlquiler;
        this.fechaDevolucion = fechaDevolucion;
        this.valorAlquiler = valorAlquiler;
        this.cantidad = cantidad;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public Ejemplar getCodigoLibro() {
        return codigoLibro;
    }

    public void setCodigoLibro(Ejemplar codigoLibro) {
        this.codigoLibro = codigoLibro;
    }

    public Cliente getNumeroMembresia() {
        return numeroMembresia;
    }

    public void setNumeroMembresia(Cliente numeroMembresia) {
        this.numeroMembresia = numeroMembresia;
    }

    public String getFechaAlquiler() {
        return fechaAlquiler;
    }

    public void setFechaAlquiler(String fechaAlquiler) {
        this.fechaAlquiler = fechaAlquiler;
    }

    public String getFechaDevolucion() {
        return fechaDevolucion;
    }

    public void setFechaDevolucion(String fechaDevolucion) {
        this.fechaDevolucion = fechaDevolucion;
    }

    public String getValorAlquiler() {
        return valorAlquiler;
    }

    public void setValorAlquiler(String valorAlquiler) {
        this.valorAlquiler = valorAlquiler;
    }

    public String getCantidad() {
        return cantidad;
    }

    public void setCantidad(String cantidad) {
        this.cantidad = cantidad;
    }

    @Override
    public String toString() {
        return "Alquiler{" + "codigo=" + codigo + ", codigoLibro=" + codigoLibro + ", numeroMembresia=" + numeroMembresia + ", fechaAlquiler=" + fechaAlquiler + ", fechaDevolucion=" + fechaDevolucion + ", valorAlquiler=" + valorAlquiler + ", cantidad=" + cantidad + '}';
    }

    
}
