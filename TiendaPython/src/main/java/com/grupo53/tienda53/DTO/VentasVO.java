package com.grupo53.tienda53.DTO;

import java.io.Serializable;

public class VentasVO implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer cedula_cliente;
	private Integer cedula_usuario;
	private double ivaventa;
	private double total_venta;
	private double valor_venta;
	/**
	 * @return the codigo_venta
	 */
	public Integer getCedula_cliente() {
		return cedula_cliente;
	}
	/**
	 * @param cedula_cliente the cedula_cliente to set
	 */
	public void setCedula_cliente(Integer cedula_cliente) {
		this.cedula_cliente = cedula_cliente;
	}
	/**
	 * @return the cedula_usuario
	 */
	public Integer getCedula_usuario() {
		return cedula_usuario;
	}
	/**
	 * @param cedula_usuario the cedula_usuario to set
	 */
	public void setCedula_usuario(Integer cedula_usuario) {
		this.cedula_usuario = cedula_usuario;
	}
	/**
	 * @return the ivaventa
	 */
	public double getIvaventa() {
		return ivaventa;
	}
	/**
	 * @param ivaventa the ivaventa to set
	 */
	public void setIvaventa(double ivaventa) {
		this.ivaventa = ivaventa;
	}
	/**
	 * @return the total_venta
	 */
	public double getTotal_venta() {
		return total_venta;
	}
	/**
	 * @param total_venta the total_venta to set
	 */
	public void setTotal_venta(double total_venta) {
		this.total_venta = total_venta;
	}
	/**
	 * @return the valor_venta
	 */
	public double getValor_venta() {
		return valor_venta;
	}
	/**
	 * @param valor_venta the valor_venta to set
	 */
	public void setValor_venta(double valor_venta) {
		this.valor_venta = valor_venta;
	}
	

}
