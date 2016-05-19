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
public class Actor {
    
    public String codigoAc;
    public String nombreAc;
    public String fechaNacimiento;

    public Actor(String codigoAc, String nombreAc, String fechaNacimiento) {
        this.codigoAc = codigoAc;
        this.nombreAc = nombreAc;
        this.fechaNacimiento = fechaNacimiento;
    }

    public Actor() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public String getCodigoAc() {
        return codigoAc;
    }

    public void setCodigoAc(String codigoAc) {
        this.codigoAc = codigoAc;
    }

    public String getNombreAc() {
        return nombreAc;
    }

    public void setNombreAc(String nombreAc) {
        this.nombreAc = nombreAc;
    }

    public String getfechaNacimiento() {
        return fechaNacimiento;
    }

    public void setfechaNacimiento(String fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }

    @Override
    public String toString() {
        return "Actor{" + "Codigo=" + codigoAc + ", Nombre=" + nombreAc + ", Fecha Nacimiento=" + fechaNacimiento + '}';
    }
    
    
}
