package com.grupo53.tienda53.DTO;

import java.io.Serializable;

public class ProveedorVO implements Serializable{
	
	private static final long serialVersionUID = 1L;
	private Integer nitproveedor;
	private String ciudad_cliente;
	private String direccion_proveedor;
	private String nombre_proveedor;
	private String telefono_proveedor;
	
	
	public Integer getNitproveedor() {
		return nitproveedor;
	}
	public void setNitproveedor(Integer nitproveedor) {
		this.nitproveedor = nitproveedor;
	}
	public String getCiudad_cliente() {
		return ciudad_cliente;
	}
	public void setCiudad_cliente(String ciudad_cliente) {
		this.ciudad_cliente = ciudad_cliente;
	}
	public String getDireccion_proveedor() {
		return direccion_proveedor;
	}
	public void setDireccion_proveedor(String direccion_proveedor) {
		this.direccion_proveedor = direccion_proveedor;
	}
	public String getNombre_proveedor() {
		return nombre_proveedor;
	}
	public void setNombre_proveedor(String nombre_proveedor) {
		this.nombre_proveedor = nombre_proveedor;
	}
	public String getTelefono_proveedor() {
		return telefono_proveedor;
	}
	public void setTelefono_proveedor(String telefono_proveedor) {
		this.telefono_proveedor = telefono_proveedor;
	}
	

}
