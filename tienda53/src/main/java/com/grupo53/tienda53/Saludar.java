package com.grupo53.tienda53;

import java.util.ArrayList;


import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Saludar {
	
	@RequestMapping("/saludo")
	public String saludo() {
		
		return "Hola mundo soy un servicio web (API)";
	}
	
	@RequestMapping("/listanum")
	public ArrayList<Integer> listanum(){
		ArrayList<Integer> lista= new ArrayList<Integer>();
		for (int i = 0; i < 10; i++) {
			lista.add(i);
		}
		return lista;
	}

}
