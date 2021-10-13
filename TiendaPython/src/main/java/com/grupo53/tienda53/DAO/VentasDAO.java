/**
 * 
 */
package com.grupo53.tienda53.DAO;

import java.sql.*;

import com.grupo53.tienda53.DTO.*;

/**
 * @author ISRAEL.JIMENEZ
 *
 */
public class VentasDAO {

	public void registrarVenta(VentasVO venta) {
		// llama y crea una instancia de la clase encargada de hacer la conexión
		Conexion conex = new Conexion();

		try {
			// sentencia que se ejecutara en la base de datos
			Statement estatuto = conex.getConnection().createStatement();

			String sentencia = "INSERT INTO ventas VALUES(NULL," 
					+ venta.getCedula_cliente() + "," + "'"
					+ venta.getCedula_usuario() + "'," + "'" 
					+ venta.getIvaventa() + "'," + "'" 
					+ venta.getTotal_venta() + "'," + "'" 
					+ venta.getValor_venta() + "'"
					+ ");";
			
			// se ejecuta la sentencia en la base de datos
			estatuto.executeUpdate(sentencia);
			// impresión en consola para verificación
			System.out.println("Registrado " + sentencia);
			// cerrando la sentencia y la conexión
			estatuto.close();
			conex.desconectar();

		} catch (SQLException e) {
			// si hay un error en el sql mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo insertar la Venta");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			// si hay cualquier otro error mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo insertar la Venta");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}
	}

}
