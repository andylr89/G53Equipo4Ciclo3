package com.grupo53.tienda53.BO;

import java.util.ArrayList;


import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import com.grupo53.tienda53.DAO.ProveedorDAO;
import com.grupo53.tienda53.DTO.ProveedorVO;

@RestController
public class ProveedorController {
	
	/*
	 * @GetMapping obtener o buscar
	 * @PostMapping insertar o agregar
	 * @PutMapping modificar o actualizar
	 * @DeleteMapping eliminar o borrar
	 * */

	@PostMapping("/registrarproveedor")
	public void registrarCliente(ProveedorVO provider) {
		ProveedorDAO Dao = new ProveedorDAO();
		Dao.registrarProveedor(provider);
	}

	@GetMapping("/consultarproveedor")
	public ArrayList<ProveedorVO> consultarProveedor(Integer provider) {
		ProveedorDAO Dao = new ProveedorDAO();
		return Dao.consultarProveedor(provider);
	}

	@GetMapping("/listarproveedor")
	public ArrayList<ProveedorVO> listaDeProveedores() {
		ProveedorDAO Dao = new ProveedorDAO();
		return Dao.listaDeProveedores();
	}
	@DeleteMapping("/eliminarproveedor")
	public void eliminarProveedor(Integer nit_proveedor) {
		ProveedorDAO Dao = new ProveedorDAO();
		Dao.eliminarProveedor(nit_proveedor);
	}
	
	@PutMapping("/actualizarproveedor")
	public void actualizarProveedor(ProveedorVO provider) {
		ProveedorDAO Dao = new ProveedorDAO();
		Dao.actualizarProveedor(provider);
	}

}
