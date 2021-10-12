package com.grupo53.tienda53.DTO;

import java.io.Serializable;

public class VentasVO implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer codigo_venta;
	private Integer cedula_cliente;
	private Integer cedula_usuario;
	private double ivaventa;
	private double total_venta;
	private double valor_venta;

	public Integer getCodigo_venta() {
		return codigo_venta;
	}

	public void setCodigo_venta(Integer codigo_venta) {
		this.codigo_venta = codigo_venta;
	}

	public Integer getCedula_cliente() {
		return cedula_cliente;
	}

	public void setCedula_cliente(Integer cedula_cliente) {
		this.cedula_cliente = cedula_cliente;
	}

	public Integer getCedula_usuario() {
		return cedula_usuario;
	}

	public void setCedula_usuario(Integer cedula_usuario) {
		this.cedula_usuario = cedula_usuario;
	}

	public double getIvaventa() {
		return ivaventa;
	}

	public void setIvaventa(double ivaventa) {
		this.ivaventa = ivaventa;
	}

	public double getTotal_venta() {
		return total_venta;
	}

	public void setTotal_venta(double total_venta) {
		this.total_venta = total_venta;
	}

	public double getValor_venta() {
		return valor_venta;
	}

	public void setValor_venta(double valor_venta) {
		this.valor_venta = valor_venta;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
