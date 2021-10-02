package com.grupo53.tienda53.DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.grupo53.tienda53.DTO.*;

/**
 * Clase que permite el acceso a la base de datos
 *
 */
public class ProveedorDAO {

	/**
	 * Permite registrar un Usuario nuevo
	 * 
	 * @param user
	 */

	public void registrarProveedor(ProveedorVO proveedor) {
		// llama y crea una instancia de la clase encargada de hacer la conexión
		Conexion conex = new Conexion();

		try {
			// sentencia que se ejecutara en la base de datos
			Statement estatuto = conex.getConnection().createStatement();
			// String que contiene la sentencia insert a ejecutar
			String sentencia = "insert into proveedor values(" + proveedor.getNit_proveedor() + "," + "'"
					+ proveedor.getCiudad_proveedor() + "'" + proveedor.getDireccion_proveedor() + "'"
					+ proveedor.getNombre_proveedor() + "'" + proveedor.getTelefono_proveedor() + "'" + ");";

			conex.desconectar();

		} catch (SQLException e) {
			// si hay un error en el sql mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo insertar el Proveedor");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			// si hay cualquier otro error mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo insertar el Proveedor");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}

	}

	/**
	 * permite consultar el Proveedor asociado al user enviado como parametro
	 * 
	 * @param documento
	 * @return
	 */
	public ArrayList<ProveedorVO> consultarProveedor(String proveedor) {

		// lista que contendra el o los usuarios obtenidos
		ArrayList<ProveedorVO> listaproveedores = new ArrayList<ProveedorVO>();

		// instancia de la conexión
		Conexion conex = new Conexion();

		try {
			// prepare la sentencia en la base de datos
			PreparedStatement consulta = conex.getConnection()
					.prepareStatement("SELECT * FROM proveedores where nit_proveedor = ? ");

			// se cambia el comodin ? por el dato que ha llegado en el parametro de la
			// funcion
			consulta.setString(1, proveedor);

			// ejecute la sentencia
			ResultSet res = consulta.executeQuery();

			// cree un objeto basado en la clase entidad con los datos encontrados
			if (res.next()) {
				ProveedorVO Proveedor = new ProveedorVO();
				Proveedor.setNit_proveedor(Integer.parseInt(res.getString("nit_proveedor")));
				Proveedor.setCiudad_proveedor(res.getString("ciudad_proveedor"));
				Proveedor.setDireccion_proveedor(res.getString("direccion_proveedor"));
				Proveedor.setNombre_proveedor(res.getString("nombre_proveedor"));
				Proveedor.setTelefono_proveedor(res.getString("telefono_proveedor"));

				listaproveedores.add(Proveedor);
			}

			// cerrar resultado, sentencia y conexión
			res.close();
			consulta.close();
			conex.desconectar();

		} catch (SQLException e) {
			// si hay un error en el sql mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar el Proveedor");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			// si hay cualquier otro error mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar el Proveedor");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}
		return listaproveedores;
	}

	/**
	 * permite consultar la lista de todos los usuarios
	 * 
	 * @return
	 */
	public ArrayList<ProveedorVO> listaDeProveedores() {
		// lista que contendra el o los usuarios obtenidos
		ArrayList<ProveedorVO> listaproveedores = new ArrayList<ProveedorVO>();

		// instancia de la conexión
		Conexion conex = new Conexion();

		try {
			// prepare la sentencia en la base de datos
			PreparedStatement consulta = conex.getConnection().prepareStatement("SELECT * FROM proveedores");

			// ejecute la sentencia
			ResultSet res = consulta.executeQuery();

			// cree un objeto para cada encontrado en la base de datos basado en la clase
			// entidad con los datos encontrados
			while (res.next()) {
				ProveedorVO Proveedor = new ProveedorVO();
				Proveedor.setNit_proveedor(Integer.parseInt(res.getString("nit_proveedor")));
				Proveedor.setCiudad_proveedor(res.getString("ciudad_proveedor"));
				Proveedor.setDireccion_proveedor(res.getString("direccion_proveedor"));
				Proveedor.setNombre_proveedor(res.getString("nombre_proveedor"));
				Proveedor.setTelefono_proveedor(res.getString("telefono_proveedor"));

				listaproveedores.add(Proveedor);
			}

			// cerrar resultado, sentencia y conexión
			res.close();
			consulta.close();
			conex.desconectar();

		} catch (SQLException e) {
			// si hay un error en el sql mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar todos los proveedores");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			// si hay cualquier otro error mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar todos los proveedores");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}

		return listaproveedores;
	}

	public void eliminarProveedor(Integer nit_proveedor) {

		// instancia de la conexion
		Conexion conex = new Conexion();

		try {
			// sentencia inicializada
			Statement consulta = conex.getConnection().createStatement();

			// preparando sentencia a realizar
			String sentencia = "delete from proveedores where nit_proveedor=" + nit_proveedor + ";";

			// impresion de verificación
			System.out.println("Registrado " + sentencia);

			// ejecutando la sentencia en la base de datos
			consulta.execute(sentencia);

			// cerrando sentencia y conexión
			consulta.close();
			conex.desconectar();

		} catch (SQLException e) {
			// si hay un error en el sql mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo eliminar el proveedor");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			// si hay cualquier otro error mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo eliminar el proveedor");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}

	}

	public void actualizarProveedor(ProveedorVO proveedor) {

		// instancia de conexion
		Conexion conex = new Conexion();

		try {
			// inicializando sentencia
			Statement estatuto = conex.getConnection().createStatement();

			// String con la sentencia a ejecutar
			String sentencia = "UPDATE proveedores " + "SET ciudad_proveedor = '" + proveedor.getCiudad_proveedor() + "',"
					+ "direccion_proveedor = '" + proveedor.getDireccion_proveedor() + "'," + "nombre_proveedor = '" + proveedor.getNombre_proveedor()
					+ "'," + "telefono_proveedor = '" + proveedor.getTelefono_proveedor() + "' " + "WHERE nit_proveedor = "
					+ proveedor.getNit_proveedor() + ";";

			// ejecuta la sentencia
			estatuto.executeUpdate(sentencia);

			// verificación por consola de la sentencia
			System.out.println("Registrado " + sentencia);

			// cerrando sentencia y conexión
			estatuto.close();
			conex.desconectar();

		} catch (SQLException e) {
			// si hay un error en el sql mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo actualizar  el proveedor");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			// si hay cualquier otro error mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo eliminar el proveedor");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}

	}

}