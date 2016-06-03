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
    public Double valorAlquiler;
    public int cantidad;

    public Alquiler() {
    }

    public Alquiler(String codigo, Ejemplar codigoEjemplar, Cliente numeroMembresia, String fechaAlquiler, String fechaDevolucion, Double valorAlquiler, int cantidad) {
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

    public Ejemplar getCodigoCasette() {
        return codigoLibro;
    }

    public void setCodigoEjemplar(Ejemplar codigoEjemplar) {
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

    public Double getValorAlquiler() {
        return valorAlquiler;
    }

    public void setValorAlquiler(Double valorAlquiler) {
        this.valorAlquiler = valorAlquiler;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    @Override
    public String toString() {
        return "Alquiler{" + "Codigo=" + codigo + ", Codigo Casette=" + codigoLibro + ", Codigo Cliente=" + numeroMembresia + ", Fecha Alquiler=" + fechaAlquiler + ", Fecha Devolucion=" + fechaDevolucion + ", Valor Alquiler=" + valorAlquiler + ", Cantidad=" + cantidad + '}';
    }
    
    
}
