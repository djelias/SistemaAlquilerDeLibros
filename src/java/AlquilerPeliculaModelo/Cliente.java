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
public class Cliente {
    
    private int numeroMembresia;
    private String nombre;
    private String direccion;
    private String telefono;

    public Cliente(int numeroMembresia, String nombre, String direccion, String telefono) {
        this.numeroMembresia = numeroMembresia;
        this.nombre = nombre;
        this.direccion = direccion;
        this.telefono = telefono;
    }

    public int getNumeroMembresia() {
        return numeroMembresia;
    }

    public void setNumeroMembresia(int numeroMembresia) {
        this.numeroMembresia = numeroMembresia;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    @Override
    public String toString() {
        return "Cliente{" + "Numero Membresia=" + numeroMembresia + ", Nombre=" + nombre + ", Direccion=" + direccion + ", Telefono=" + telefono + '}';
    }
    
    
}
