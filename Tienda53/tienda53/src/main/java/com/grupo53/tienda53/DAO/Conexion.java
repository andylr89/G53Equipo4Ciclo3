package com.grupo53.tienda53.DAO;

import java.sql.*;

public class Conexion {
	
	String nombre_bd="tiendagrupo4";
	String usuario_bd="root";
	String password_bd="mintic";
	String URL="jdbc:mysql://127.0.0.1/"+nombre_bd;
	
	//objeto sin inicializar de la conexión
		Connection connection = null;

		/** Constructor de DbConnection */
		public Conexion() {
			try {
				// obtenemos el driver de para mysql
				Class.forName("com.mysql.cj.jdbc.Driver");
				// obtenemos la conexión
				connection = DriverManager.getConnection(URL,usuario_bd,password_bd);
				
				//si hay conexión correcta mostrar información en consola
				if (connection != null) {
					System.out.println("Conexión a base de datos " + nombre_bd + " OK\n");
				}
			
			} catch (SQLException e) {
				//error de la base de datos
				System.out.println(e);
			} catch (ClassNotFoundException e) {
				//error en carga de clases
				System.out.println(e);
			} catch (Exception e) {
				//cualquier otro error
				System.out.println(e);
			}
		}

		/** Permite retornar la conexión */
		public Connection getConnection() {
			return connection;
		}
		
		//cerrando la conexión
		public void desconectar() {
			connection = null;
		}
	
}
