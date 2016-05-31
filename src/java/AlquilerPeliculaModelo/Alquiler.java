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
public class Alquiler {
    
    private String codigo;
    private Libro codigoLibro;
    private Cliente codigoCliente;
    private String fechaAlquiler;
    private String fechaDevolucion;
    private float valorAlquiler;
    private int cantidad;

    public Alquiler(String codigo, Ejemplar codigoEjemplar, Cliente codigoCliente, String fechaAlquiler, String fechaDevolucion, float valorAlquiler, int cantidad) {
        this.codigo = codigo;
        this.codigoLibro = codigoLibro;
        this.codigoCliente = codigoCliente;
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

    public Libro getCodigoCasette() {
        return codigoLibro;
    }

    public void setCodigoEjemplar(Ejemplar codigoEjemplar) {
        this.codigoLibro = codigoLibro;
    }

    public Cliente getCodigoCliente() {
        return codigoCliente;
    }

    public void setCodigoCliente(Cliente codigoCliente) {
        this.codigoCliente = codigoCliente;
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

    public float getValorAlquiler() {
        return valorAlquiler;
    }

    public void setValorAlquiler(float valorAlquiler) {
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
        return "Alquiler{" + "Codigo=" + codigo + ", Codigo Casette=" + codigoLibro + ", Codigo Cliente=" + codigoCliente + ", Fecha Alquiler=" + fechaAlquiler + ", Fecha Devolucion=" + fechaDevolucion + ", Valor Alquiler=" + valorAlquiler + ", Cantidad=" + cantidad + '}';
    }
    
    
}
