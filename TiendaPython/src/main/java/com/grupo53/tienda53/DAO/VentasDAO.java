/**
 * 
 */
package com.grupo53.tienda53.DAO;

import java.sql.*;
import java.util.ArrayList;

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
	
	public ArrayList<VentasVO> listaDeVentas() {
		//lista que contendra el o los clientes obtenidos
		ArrayList<VentasVO> listaventas = new ArrayList<VentasVO>();
		
		//instancia de la conexión
		Conexion conex = new Conexion();

		try {
			//prepare la sentencia en la base de datos
			PreparedStatement consulta = conex.getConnection().prepareStatement("SELECT * FROM ventas");
			
			//ejecute la sentencia
			ResultSet res = consulta.executeQuery();
			
			//cree un objeto para cada encontrado en la base de datos basado en la clase entidad con los datos encontrados
			while (res.next()) {
				VentasVO Venta = new VentasVO();
				Venta.setCodigo_venta(Integer.parseInt(res.getString("codigo_venta")));
				Venta.setCedula_cliente(Integer.parseInt(res.getString("cedula_cliente")));
				Venta.setCedula_usuario(Integer.parseInt(res.getString("cedula_usuario")));
				Venta.setIvaventa(res.getDouble("ivaventa"));
				Venta.setTotal_venta(res.getDouble("total_venta"));
				Venta.setValor_venta(res.getDouble("valor_venta"));

				listaventas.add(Venta);
			}
			
			//cerrar resultado, sentencia y conexión
			res.close();
			consulta.close();
			conex.desconectar();

		} catch (SQLException e) {
			//si hay un error en el sql mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar todos los clientes");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			//si hay cualquier otro error mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar todos los clientes");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}

		return listaventas;
	}	
	
	public ArrayList<VentasVO> listaConsecutivo() {
		//lista que contendra el o los clientes obtenidos
		ArrayList<VentasVO> listaconce = new ArrayList<VentasVO>();
		
		//instancia de la conexión
		Conexion conex = new Conexion();

		try {
			//prepare la sentencia en la base de datos
			//PreparedStatement consulta = conex.getConnection().prepareStatement("SELECT AUTO_INCREMENT codigo_venta FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'g53e4' AND TABLE_NAME = 'ventas'");
			PreparedStatement consulta = conex.getConnection().prepareStatement("select max(codigo_venta) +1 codigo_venta from ventas");
			//ejecute la sentencia
			ResultSet res = consulta.executeQuery();
			
			//cree un objeto para cada encontrado en la base de datos basado en la clase entidad con los datos encontrados
			while (res.next()) {
				VentasVO Conc = new VentasVO();
				Conc.setCodigo_venta(Integer.parseInt(res.getString("codigo_venta")));
				listaconce.add(Conc);
			}
			
			//cerrar resultado, sentencia y conexión
			res.close();
			consulta.close();
			conex.desconectar();

		} catch (SQLException e) {
			//si hay un error en el sql mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar El Consecutivo");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			//si hay cualquier otro error mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar El Consecutivo");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}

		return listaconce;
	}
	

}
