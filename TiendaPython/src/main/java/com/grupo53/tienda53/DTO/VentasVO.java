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
	private Double ivaventa;
	private Double total_venta;
	private Double valor_venta;
	/**
	 * @return the codigo_venta
	 */
	public Integer getCodigo_venta() {
		return codigo_venta;
	}
	/**
	 * @param codigo_venta the codigo_venta to set
	 */
	public void setCodigo_venta(Integer codigo_venta) {
		this.codigo_venta = codigo_venta;
	}
	/**
	 * @return the cedula_cliente
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
	public Double getIvaventa() {
		return ivaventa;
	}
	/**
	 * @param ivaventa the ivaventa to set
	 */
	public void setIvaventa(Double ivaventa) {
		this.ivaventa = ivaventa;
	}
	/**
	 * @return the total_venta
	 */
	public Double getTotal_venta() {
		return total_venta;
	}
	/**
	 * @param total_venta the total_venta to set
	 */
	public void setTotal_venta(Double total_venta) {
		this.total_venta = total_venta;
	}
	/**
	 * @return the valor_venta
	 */
	public Double getValor_venta() {
		return valor_venta;
	}
	/**
	 * @param valor_venta the valor_venta to set
	 */
	public void setValor_venta(Double valor_venta) {
		this.valor_venta = valor_venta;
	}
	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
}
