/** LLeva el concecutivo */
var baseurl = "http://localhost:8080/listarconcecutivo";
function loadconce() {
	var xmlhttp = new XMLHttpRequest();
	xmlhttp.open("GET", baseurl, true);
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
			var clientes = JSON.parse(xmlhttp.responseText);
			for (i = 0; i < clientes.length; i++) {
				document.getElementById("consecutivo").value = clientes[i].codigo_venta;
			}
		}
	};
	xmlhttp.send();
}
window.onload = function() {
	loadconce();
}

/** Carga Informacion Cliente */
function enviar() {

	var req = new XMLHttpRequest();
	var user = document.getElementById("user_search").value;
	req.open('GET', 'http://localhost:8080/consultacliente?cli=' + user, false);
	req.send(null);
	var usuario = null;
	if (req.status == 200)
		usuario = JSON.parse(req.responseText);
	console.log(JSON.parse(req.responseText));

	console.log(usuario.toString());

	if (usuario.toString() != "") {
		document.getElementById("nombre_cliente").value = usuario[0].nombre_cliente;
	} else {

		alert("Error el documento " + user + " solicitado no esta registrado como cliente");
		document.getElementById("idsearch").value = "";
	}
}

/*Trae Usuario */

function traerNombreUsuario() {
	var user = document.getElementById("cedula_usuario").value;
	var req = new XMLHttpRequest();
	req.open('GET', 'http://localhost:8080/consultarusuario?usuario='
		+ user, false);
	req.send(null);
	var usuario = null;
	if (req.status == 200)
		usuario = JSON.parse(req.responseText);
	console.log(usuario);
	if (usuario.toString() != "") {

		document.getElementById("nombre_usuario").value = usuario[0].nombre_usuario;

	} else {
		alert("Error el documento " + user + " solicitado no esta registrado como Usuario");
		document.getElementById("nombre_usuario").value = "";
	}
}

/** Carga Informacion Producto */
function producto1() {

	var req = new XMLHttpRequest();
	var pro = document.getElementById("codigo_producto1").value;
	req.open('GET', 'http://localhost:8080/consultarproducto?product=' + pro, false);
	req.send(null);
	var usuario = null;
	if (req.status == 200)
		usuario = JSON.parse(req.responseText);
	console.log(JSON.parse(req.responseText));

	console.log(usuario.toString());

	if (usuario.toString() != "") {
		document.getElementById("nombre_producto1").value = usuario[0].nombre_producto;
		m1 = usuario[0].precio_venta;
	} else {

		alert("Error el documento " + pro + " solicitado no esta registrado como Producto");
		document.getElementById("codigo_producto1").value = "";
	}
}

/*Multiplica */
function multiplicar() {
	m2 = document.getElementById("cant_producto").value;
	r = m1 * m2;
	document.getElementById("valor_total").value = r;
}

function pr() {
	if (document.getElementById("cant_producto").value != "") {
		multiplicar()
	}
}







