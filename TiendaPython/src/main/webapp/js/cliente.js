var m1 = 0;
var m3 = 0;
var m4 = 0;

var r1 = 0;
var r2 = 0;
var r3 = 0;

var encabe = 0;
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
	var user = document.getElementById("cliente_search").value;
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
		document.getElementById("cliente_search").value = "";
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
		document.getElementById("cedula_usuario").value = "";
	}
}

/** Carga Informacion Producto1 */
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
	m2 = document.getElementById("cant_producto1").value;
	r1 = m1 * m2;
	document.getElementById("valor_total1").value = r1;
}

function pr1() {
	if (document.getElementById("cant_producto1").value != "") {
		multiplicar()
		tventa()
		tiva()
	}
}

/** Carga Informacion Producto2 */
function producto2() {

	var req = new XMLHttpRequest();
	var pro = document.getElementById("codigo_producto2").value;
	req.open('GET', 'http://localhost:8080/consultarproducto?product=' + pro, false);
	req.send(null);
	var usuario = null;
	if (req.status == 200)
		usuario = JSON.parse(req.responseText);
	console.log(JSON.parse(req.responseText));

	console.log(usuario.toString());

	if (usuario.toString() != "") {
		document.getElementById("nombre_producto2").value = usuario[0].nombre_producto;
		m3 = usuario[0].precio_venta;
	} else {

		alert("Error el documento " + pro + " solicitado no esta registrado como Producto");
		document.getElementById("codigo_producto2").value = "";
	}
}

/*Multiplica */
function multiplicar2() {
	m2 = document.getElementById("cant_producto2").value;
	r2 = m3 * m2;
	document.getElementById("valor_total2").value = r2;
}

function pr2() {
	if (document.getElementById("cant_producto2").value != "") {
		multiplicar2()
		tventa()
		tiva()
	}
}
/** Carga Informacion Producto3 */
function producto3() {

	var req = new XMLHttpRequest();
	var pro = document.getElementById("codigo_producto3").value;
	req.open('GET', 'http://localhost:8080/consultarproducto?product=' + pro, false);
	req.send(null);
	var usuario = null;
	if (req.status == 200)
		usuario = JSON.parse(req.responseText);
	console.log(JSON.parse(req.responseText));

	console.log(usuario.toString());

	if (usuario.toString() != "") {
		document.getElementById("nombre_producto3").value = usuario[0].nombre_producto;
		m4 = usuario[0].precio_venta;
	} else {

		alert("Error el documento " + pro + " solicitado no esta registrado como Producto");
		document.getElementById("codigo_producto3").value = "";
	}
}

/*Multiplica */
function multiplicar3() {
	m2 = document.getElementById("cant_producto3").value;
	r3 = m4 * m2;
	document.getElementById("valor_total3").value = r3;
}

function pr3() {
	if (document.getElementById("cant_producto3").value != "") {
		multiplicar3()
		tventa()
		tiva()
	}
}


function tventa() {
	tvta = r1 + r2 + r3;
	document.getElementById("tventa").value = tvta;
}

function tiva() {
	tiv = (r1 * 0.19) + (r2 * 0.19) + (r3 * 0.19);
	document.getElementById("tiva").value = tiv;
	tventaiva = tvta + tiv;
	document.getElementById("ttotal").value = tventaiva;
}


function registrar() {
	try {

		formData = new FormData();
		formData.append("codigo_venta", document.getElementById("consecutivo").value);
		formData.append("cedula_cliente", document.getElementById("cliente_search").value);
		formData.append("cedula_usuario", document.getElementById("cedula_usuario").value);
		formData.append("ivaventa", document.getElementById("tiva").value);
		formData.append("total_venta", document.getElementById("tventa").value);
		formData.append("valor_venta", document.getElementById("ttotal").value);
		var xhr = new XMLHttpRequest();
		xhr.open("POST", "http://localhost:8080/registrarventa");
		xhr.send(formData);

	} catch (error) {
		alert("Error al guardar la Factura ")
		encabe = 1;
	}

}

function detalle() {
	if (encabe != 1) {
		var prod1 = document.getElementById("codigo_producto1").value;
		if (prod1 != null) {

			var formData2 = new FormData();
			//formData2.append("codigo_detalle_venta", );
			formData2.append("cantidad_producto", document.getElementById("cant_producto1").value);
			formData2.append("codigo_producto", document.getElementById("codigo_producto1").value);
			formData2.append("codigo_venta", document.getElementById("consecutivo").value);
			formData2.append("valor_total", document.getElementById("ttotal").value);
			formData2.append("valor_venta", document.getElementById("tventa").value);
			formData2.append("valoriva", document.getElementById("tiva").value);
			var xhr2 = new XMLHttpRequest();
			xhr2.open("POST", "http://localhost:8080/registrardetalleventa");
			xhr2.send(formData2);
		}

		var prod2 = document.getElementById("codigo_producto2").value;
		if (prod2 != null) {

			var formData2 = new FormData();
			//formData2.append("codigo_detalle_venta", );
			formData2.append("cantidad_producto", document.getElementById("cant_producto2").value);
			formData2.append("codigo_producto", document.getElementById("codigo_producto2").value);
			formData2.append("codigo_venta", document.getElementById("consecutivo").value);
			formData2.append("valor_total", document.getElementById("ttotal").value);
			formData2.append("valor_venta", document.getElementById("tventa").value);
			formData2.append("valoriva", document.getElementById("tiva").value);
			var xhr2 = new XMLHttpRequest();
			xhr2.open("POST", "http://localhost:8080/registrardetalleventa");
			xhr2.send(formData2);

		}
		var prod3 = document.getElementById("codigo_producto3").value;
		if (prod3 != null) {

			var formData2 = new FormData();
			//formData2.append("codigo_detalle_venta", );
			formData2.append("cantidad_producto", document.getElementById("cant_producto3").value);
			formData2.append("codigo_producto", document.getElementById("codigo_producto3").value);
			formData2.append("codigo_venta", document.getElementById("consecutivo").value);
			formData2.append("valor_total", document.getElementById("ttotal").value);
			formData2.append("valor_venta", document.getElementById("tventa").value);
			formData2.append("valoriva", document.getElementById("tiva").value);
			var xhr2 = new XMLHttpRequest();
			xhr2.open("POST", "http://localhost:8080/registrardetalleventa");
			xhr2.send(formData2);

		}

	}
}










