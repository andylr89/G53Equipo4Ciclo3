package com.grupo53.tienda53.BO;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import com.grupo53.tienda53.DAO.ProductoDAO;
import com.grupo53.tienda53.DTO.ProductoVO;



@RestController
public class ProductoController {
	
	/*
	 * @GetMapping obtener o buscar
	 * @PostMapping insertar o agregar
	 * @PutMapping modificar o actualizar
	 * @DeleteMapping eliminar o borrar
	 * */

	@PostMapping("/registrarproducto")
	public void registrarProducto(ProductoVO product) {
		ProductoDAO Dao = new ProductoDAO();
		Dao.registrarProducto(product);
	}

	@GetMapping("/consultarproducto")
	public ArrayList<ProductoVO> consultarProducto(Integer product) {
		ProductoDAO Dao = new ProductoDAO();
		return Dao.consultarProducto(product);
	}

	@GetMapping("/listarproductos")
	public ArrayList<ProductoVO> listaDeProductos() {
		ProductoDAO Dao = new ProductoDAO();
		return Dao.listaDeProductos();
	}
	
	@DeleteMapping("/eliminarproducto")
	public void eliminarProducto(Integer codigo_producto) {
		ProductoDAO Dao = new ProductoDAO();
		Dao.eliminarProducto(codigo_producto);
	}
	
	@DeleteMapping("/eliminartodoproducto")
	public void eliminarTodoProducto() {
		ProductoDAO Dao = new ProductoDAO();
		Dao.eliminarTodoProducto();
	}
	
	@PutMapping("/actualizarproducto")
	public void actualizarProducto(ProductoVO product) {
		ProductoDAO Dao = new ProductoDAO();
		Dao.actualizarProducto(product);
	}

}
