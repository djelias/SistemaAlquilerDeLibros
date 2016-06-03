/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package AlquilerLibroDB;

import AlquilerLibroModelo.Cliente;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Marvin
 */
public class ClienteDB {
    private List<Cliente> clientes = new ArrayList<Cliente>();

    public void obtenerClientes() {
        clientes.clear();
        try {
            String sentenciaSql = "SELECT * FROM cliente";
            Statement statement = Conexion.getConexion().createStatement();
            ResultSet resultado = statement.executeQuery(sentenciaSql);
            while (resultado.next()) {
                Cliente cliente = new Cliente();
                cliente.numeroMembresia = resultado.getString("numeromembresia");
                cliente.nombre = resultado.getString("nombrecliente");
                cliente.direccion = resultado.getString("direccioncliente");
                cliente.telefono = resultado.getString("telefonocliente");
                clientes.add(cliente);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
    
    public static Cliente obtenerCliente(String numeromembresia) {         
         Cliente cliente = null;         
         try {             
             String sentenciaSql = "SELECT * FROM cliente WHERE numeromembresia = ?";             
             PreparedStatement statement = Conexion.getConexion().prepareStatement(sentenciaSql);             
             statement.setString(1, numeromembresia);             
             ResultSet resultado = statement.executeQuery();            
             while (resultado.next()) {                 
                 cliente = new Cliente();  
                 cliente.numeroMembresia=resultado.getString("numeromembresia");
                 cliente.nombre = resultado.getString("nombrecliente");                 
                 cliente.direccion = resultado.getString("direccioncliente");
                 cliente.telefono = resultado.getString("telefonocliente");
             }  
        } catch (SQLException ex) {             
            ex.printStackTrace();         
        }         
         return cliente;     
     } 

    public boolean guardar(String numeromembresia, String nombrecliente, String direccioncliente, String telefonocliente) {
        boolean guardado = true;
        try {
            String sentenciaSql;
            PreparedStatement preparedStatement;
            sentenciaSql = "INSERT INTO cliente(numeromembresia, nombrecliente, direccioncliente, telefonocliente) VALUES "
                    + "(?,?,?,?)";
            preparedStatement = Conexion.getConexion().prepareStatement(sentenciaSql);
            preparedStatement.setString(1, numeromembresia);
            preparedStatement.setString(2, nombrecliente);
            preparedStatement.setString(3, direccioncliente);
            preparedStatement.setString(4, telefonocliente);
            
            preparedStatement.execute();
        } catch (SQLException ex) {
            guardado = false;
            ex.printStackTrace();
        }
        return guardado;
    }

    /**
     * @return the carreras
     */
    public List<Cliente> getClientes() {
        return clientes;
    }

    /**
     * @param cliente the clientes to set
     */
    public void setClientes(List<Cliente> clientes) {
        this.clientes = clientes;
    }
}
