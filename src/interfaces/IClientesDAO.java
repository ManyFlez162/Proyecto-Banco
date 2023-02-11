/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interfaces;

import dominio.Cliente;
import excepciones.PersistenciaException;
import java.util.List;

/**
 *
 * @author Dell
 */
public interface IClientesDAO {
    Cliente consultar(Integer idCliente);
    Cliente insertar(Cliente cliente) throws PersistenciaException;
    Cliente eliminar(Cliente cliente);
    List<Cliente> consultar(ConfiguracionPaginado paginado) throws PersistenciaException;
}
