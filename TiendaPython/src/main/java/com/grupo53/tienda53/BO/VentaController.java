package com.grupo53.tienda53.BO;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.grupo53.tienda53.DAO.VentasDAO;
import com.grupo53.tienda53.DTO.VentasVO;

@RestController
public class VentaController {

	/*
	 * @GetMapping obtener o buscar
	 * @PostMapping insertar o agregar
	 * @PutMapping modificar o actualizar
	 * @DeleteMapping eliminar o borrar
	 * */

	@PostMapping("/registrarventa")
	public void registrarVenta(VentasVO venta) {
		VentasDAO Dao = new VentasDAO();
		Dao.registrarVenta(venta);
	}
	
	
}
