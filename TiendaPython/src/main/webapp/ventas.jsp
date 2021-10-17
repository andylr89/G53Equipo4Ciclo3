<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>


<!-- paquete de caracteres -->
<meta charset="utf-8">
<!-- Tamaño de la pantalla -->
<meta name="viewport" content="width=device-width">
<!-- titulo de la pestaña -->
<title>Registro Ventas</title>
<!-- bootstrap-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<!-- font awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
	integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm"
	crossorigin="anonymous">

<!-- Cargando mi hoja de estilo -->
<link href="style.css" rel="stylesheet" type="text/css" />
</head>


<body>
	<!-- Navbar-->
	<nav class="navbar navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand links" href="index.html"><i
				class="fas fa-shopping-cart"></i> Tienda Python </a>
		</div>
	</nav>

	<!-- Navbar modulos-->
	<nav class="navbar navbar-dark bg-primary">
		<div class="container">
			<a class="navbar-brand links" href="listausuarios.jsp"> <i
				class="fas fa-users"></i> Usuarios
			</a> <a class="navbar-brand links" href="listaclientes.jsp"> <i
				class="fas fa-address-book"></i> Clientes
			</a> <a class="navbar-brand links" href="listaproveedores.jsp"> <i
				class="fas fa-truck"></i> Proveedores
			</a> <a class="navbar-brand links" href="insertarproducto.jsp"> <i
				class="fas fa-apple-alt"></i> Productos
			</a> <a class="navbar-brand links" href="ventas.jsp"> <i
				class="fas fa-money-check-alt"></i> Ventas
			</a> <a class="navbar-brand links" href="reportes.jsp"> <i
				class="fas fa-clipboard-list"></i> Reportes
			</a>
		</div>
	</nav>

	<div>
		<h2>
			<i class="fas fa-search"></i> Realizar un Registro
		</h2>
		<div class="container">


			<form id="form1">
				<br>

				<div class="input-group mb-3">

					<span class="input-group-text1" id="basic-addon1">Cedula</span><br>
					<input type="text" class="form-control"
						placeholder="Inserte Cedula" aria-describedby="basic-addon1"
						required id="user_search">

					<button type="button" class="btn btn-primary ms-2"
						onclick="enviar()">
						<i class="fas fa-search"></i> Consultar
					</button>

					<span class="input-group-text1 ms-5" id="basic-addon2">
						Cliente </span> <input type="text" class="form-control"
						aria-describedby="basic-addon2" required id="nombre_cliente"
						disabled="disabled"> <span class="input-group-text1 ms-5"
						id="basic-addon3">Consec.</span> <input type="text"
						class="form-control" readonly="readonly" id="consecutivo">
				</div>

				<div class="input-group mb-3">

					<span class="input-group-text1" id="basic-addon1">Usuario</span><br>
					<input type="text" class="form-control"
						placeholder="Inserte nombre de Usuario"
						aria-describedby="basic-addon1" required id="cedula_usuario">

					<button type="button" class="btn btn-primary ms-2"
						onclick="traerNombreUsuario()">
						<i class="fas fa-search"></i> Consultar
					</button>

					<span class="input-group-text1 ms-5" id="basic-addon2">
						Usuario: </span> <input type="text" class="form-control"
						aria-describedby="basic-addon2" required id="nombre_usuario"
						disabled="disabled">

				</div><hr></i><hr>

				<!-- Producto 1 -->

				<div class="input-group mb-3">
					<label for="CodProd" class="input-group-text" id="basic-addon4">Cod.
						Producto </label> <input type="text" class="form-control" 
						aria-describedby="basic-addon4" required id="codigo_producto1">

					<button type="button" class="btn btn-primary ms-2"
						onclick="producto1()">
						<i class="fas fa-search"></i> Consultar
					</button>

					<span class="input-group-text3 ms-4" id="basic-addon5">Nombre
						Producto </span> <input type="text" class="form-control"
						id="nombre_producto1" readonly="readonly"> <span
						class="input-group-text1 ms-2" id="basic-addon6">Cant. </span>
						<input type="text" class="form-control" id="cant_producto" onchange="pr()">
						 <span class="input-group-text1 ms-2"
						id="basic-addon7">Vlr. Total </span> <input type="text"
						class="form-control" id="valor_total" readonly="readonly">
				</div>

				<!-- Producto 2 -->

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon4">Cod.
						Producto </span> <input type="text" class="form-control"
						id="codigo_producto2">

					<button type="button" class="btn btn-primary ms-2"
						onclick="cargarProducto2()">
						<i class="fas fa-search"></i> Consultar
					</button>

					<span class="input-group-text3 ms-4" id="basic-addon5">Nombre
						Producto </span> <input type="text" class="form-control"
						id="nombre_producto1" readonly="readonly"> <span
						class="input-group-text1 ms-2" id="basic-addon6">Cant. </span>
						<input type="text" class="form-control" id="cant_producto" onchange="pr()">
						 <span class="input-group-text1 ms-2"
						id="basic-addon7">Vlr. Total </span> <input type="text"
						class="form-control" id="valor_total" readonly="readonly">
				</div>

				<!-- Producto 3 -->

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon4">Cod.
						Producto </span> <input type="text" class="form-control"
						id="codigo_producto3">

					<button type="button" class="btn btn-primary ms-2"
						onclick="cargarProducto3()">
						<i class="fas fa-search"></i> Consultar
					</button>

					<span class="input-group-text3 ms-4" id="basic-addon5">Nombre
						Producto </span> <input type="text" class="form-control"
						id="nombre_producto1" readonly="readonly"> <span
						class="input-group-text1 ms-2" id="basic-addon6">Cant. </span>
						<input type="text" class="form-control" id="cant_producto" onchange="pr()">
						 <span class="input-group-text1 ms-2"
						id="basic-addon7">Vlr. Total </span> <input type="text"
						class="form-control" id="valor_total" readonly="readonly">
				</div>
				<!-- HEAD -->
				
				<div class="row justify-content-end mt-3">
					<div class="col-xl-2 col-lg-2 col-md-3 col-sm-3">
						<span class="total_venta" style="font-weight:bold"> Total Venta</span> <input type="text"
							class="form-control" id="tventa" readonly="readonly">
					</div>
				</div>
			

				<div class="row justify-content-end mt-3">
					<div class="col-xl-2 col-lg-2 col-md-3 col-sm-3">
						<span class="total_iva me-8" style="font-weight:bold">Total IVA </span><input type="text"
							class="form-control" id="tventa" readonly="readonly">
					</div>

				</div>


					<div class="row justify-content-end mt-3">
						<div class="col-xl-2 col-lg-2 col-md-3 col-sm-3">
							<span class="total_iva" style="font-weight:bold">Total Venta + IVA </span> <input
								type="text" class="form-control" id="tventa" disabled="disabled">
						</div>
					</div>

					<div class="row justify-content-end mt-3">
						<div class="col-xl-2 col-lg-2 col-md-3 col-sm-3">
							<div class="row align-items-end">
								<button type="button" class="btn btn-primary"
									onclick="Registrar()">
									<i class="fas fa-dollar-sign"></i> Confirmar
								</button>
							</div>
						</div>
					</div>
				

			</form>
		</div>
	</div>

	<nav class="navbar fixed-bottom navbar-dark bg-dark">
		<div class="row justify-content-between">
			<div class="col-4">
				<a class="navbar-brand links" href="#"><i class="fas fa-code"></i>
					Grupo 4 <i class="fas fa-code-branch"></i></a>
			</div>
		</div>
	</nav>
<<<<<<< Updated upstream


	<script>
function traerNombreCliente() {
			var client = document.getElementById("cedula_cliente").value;
			var req = new XMLHttpRequest();
			var coincidencia = false;
			req.open('GET', 'http://localhost:8080/consultarcliente?cedula='
					+ client, false);
			req.send(null);
			var cliente = null;
			if (req.status == 200)
				cliente = JSON.parse(req.responseText);
			console.log(cliente);

			var icono = document.getElementById("checkcliente");
			if (cliente.toString() != "") {

				document.getElementById("nombre_cliente").value = cliente[0].nombre_cliente;

				icono.classList.replace("text-danger", "text-success");
				icono.classList.replace("fa-times", "fa-check");

			} else {
				document.getElementById("nombre_cliente").value = "";
				icono.classList.replace("text-success", "text-danger");
				icono.classList.replace("fa-check", "fa-times");
			}
		}
		function traerNombreUsuario() {
			var user = document.getElementById("cedula_usuario").value;
			var req = new XMLHttpRequest();
			var coincidencia = false;
			req.open('GET', 'http://localhost:8080/consultarusuario?usuario='
					+ user, false);
			req.send(null);
			var usuario = null;
			if (req.status == 200)
				usuario = JSON.parse(req.responseText);
			console.log(usuario);

			var icono2 = document.getElementById("checkusuario");
			if (usuario.toString() != "") {

				document.getElementById("nombre_usuario").value = usuario[0].nombre_usuario;

				icono2.classList.replace("text-danger", "text-success");
				icono2.classList.replace("fa-times", "fa-check");

			} else {
				document.getElementById("nombre_usuario").value = "";
				icono2.classList.replace("text-success", "text-danger");
				icono2.classList.replace("fa-check", "fa-times");
			}
		}
		var precio1 = 0.0;

		function cargarProducto1() {
			var prod1 = document.getElementById("codigo_producto1").value;
			var req = new XMLHttpRequest();
			var coincidencia = false;
			req.open('GET', 'http://localhost:8080/consultarproducto?code='
					+ prod1, false);
			req.send(null);
			var producto1 = null;
			if (req.status == 200)
				producto1 = JSON.parse(req.responseText);

			var icono = document.getElementById("checkitem1");
			if (producto1.toString() != "") {

				console.log(producto1);
				document.getElementById("nombre_producto1").value = producto1[0].nombre_producto;
				precio1 = parseFloat(producto1[0].precio_venta);
				console.log("Precio1: " + precio1)
				icono.classList.replace("text-danger", "text-success");
				icono.classList.replace("fa-times", "fa-check");

			} else {
				document.getElementById("nombre_producto1").value = "";
				icono.classList.replace("text-success", "text-danger");
				icono.classList.replace("fa-check", "fa-times");
			}
			}
			var precio2 = 0.0;

		function cargarProducto2() {
			var prod2 = document.getElementById("codigo_producto2").value;
			var req = new XMLHttpRequest();
			var coincidencia = false;
			req.open('GET', 'http://localhost:8080/consultarproducto?code='
					+ prod2, false);
			req.send(null);
			var producto2 = null;
			if (req.status == 200)
				producto2 = JSON.parse(req.responseText);
			var icono = document.getElementById("checkitem2");
			if (producto2.toString() != "") {

				console.log(producto2);
				document.getElementById("nombre_producto2").value = producto2[0].nombre_producto;
				precio1 = parseFloat(producto2[0].precio_venta);
				console.log("Precio2: " + precio2)
				icono.classList.replace("text-danger", "text-success");
				icono.classList.replace("fa-times", "fa-check");

			} else {
				document.getElementById("nombre_producto2").value = "";
				icono.classList.replace("text-success", "text-danger");
				icono.classList.replace("fa-check", "fa-times");
			}
		}
		var precio3 = 0.0;

		function cargarProducto3() {
			var prod3 = document.getElementById("codigo_producto3").value;
			var req = new XMLHttpRequest();
			var coincidencia = false;
			req.open('GET', 'http://localhost:8080/consultarproducto?code='
					+ prod3, false);
			req.send(null);
			var producto3 = null;
			if (req.status == 200)
				producto3 = JSON.parse(req.responseText);
			var icono = document.getElementById("checkitem3");
			if (producto3.toString() != "") {

				console.log(producto3);
				document.getElementById("nombre_producto3").value = producto3[0].nombre_producto;
				precio1 = parseFloat(producto3[0].precio_venta);
				console.log("Precio3: " + precio3)
				icono.classList.replace("text-danger", "text-success");
				icono.classList.replace("fa-times", "fa-check");

			} else {
				document.getElementById("nombre_producto3").value = "";
				icono.classList.replace("text-success", "text-danger");
				icono.classList.replace("fa-check", "fa-times");
			}
		}
		function calcularPrecio1() {
			var cantidad = document.getElementById("cant1").value;
			var valortotal = 0.0;
			if (cantidad == "" || cantidad == null) {
				document.getElementById("valtotal1").value = 0;
			} else {
				valortotal = parseFloat(cantidad) * precio1;
				console.log("Valor 1: " + valortotal);
				document.getElementById("valtotal1").value = valortotal;
			}
			calcularFinales();
			}
			
			function calcularPrecio2() {
			var cantidad = document.getElementById("cant2").value;
			var valortotal = 0.0;
			if (cantidad == "" || cantidad == null) {
				document.getElementById("valtotal2").value = 0;
			} else {
				valortotal = parseFloat(cantidad) * precio2;
				console.log("Valor 2: " + valortotal);
				document.getElementById("valtotal2").value = valortotal;
			}
			calcularFinales();
			function calcularPrecio3() {
			var cantidad = document.getElementById("cant3").value;
			var valortotal = 0.0;
			if (cantidad == "" || cantidad == null) {
				document.getElementById("valtotal3").value = 0;
			} else {
				valortotal = parseFloat(cantidad) * precio3;
				console.log("Valor 3: " + valortotal);
				document.getElementById("valtotal3").value = valortotal;
			}
			calcularFinales();

		}
		function calcularPrecio3() {
			var cantidad = document.getElementById("cant3").value;
			var valortotal = 0.0;
			if (cantidad == "" || cantidad == null) {
				document.getElementById("valtotal3").value = 0;
			} else {
				valortotal = parseFloat(cantidad) * precio3;
				console.log("Valor 3: " + valortotal);
				document.getElementById("valtotal3").value = valortotal;
			}
			calcularFinales();

		}
		function calcularFinales() {
			var val1 = document.getElementById("valtotal1").value;
			var val2 = document.getElementById("valtotal2").value;
			var val3 = document.getElementById("valtotal3").value;
			totalventa = parseFloat(val1) + parseFloat(val2) + parseFloat(val3);
			document.getElementById("total_venta").value = totalventa;
			
			var iva = totalventa * 0.19;
			document.getElementById("total_iva").value = iva;
				document.getElementById("total_venta_iva").value = iva + totalventa;
		}
		
		function registrar() {
			try {

				formData = new FormData();
				formData.append("codigo_venta", document
						.getElementById("consecutivo").value);
				formData.append("cedula_cliente", document
						.getElementById("cedula_cliente").value);
				formData.append("cedula_usuario", document
						.getElementById("cedula_usuario").value);
				formData.append("ivaventa", document
						.getElementById("total_iva").value);
				formData.append("total_venta", document
						.getElementById("total_venta").value);
				formData.append("valor_venta", document
						.getElementById("total_venta_iva").value);
				var xhr = new XMLHttpRequest();
				xhr.open("POST", "http://localhost:8080/registrarventa");
				xhr.send(formData);

				setTimeout(
						function() {
							for (i = 1; i < 4; i++) {
								var actual = document
										.getElementById(("valtotal" + i
												.toString()).value);
								if (actual == 0) {
									continue;
								} else {
									var formData2 = new FormData();
									//formData2.append("codigo_detalle_venta", );
									formData2.append("cantidad_producto",
											document.getElementById("cant"
													+ i.toString()).value);
									formData2
											.append(
													"codigo_producto",
													document
															.getElementById("codigo_producto"
																	+ i
																			.toString()).value);
									formData2
											.append(
													"codigo_venta",
													document
															.getElementById("consecutivo").value);
									formData2.append("valor_total", document
											.getElementById("valtotal"
													+ i.toString()).value);
									formData2
											.append(
													"valor_venta",
													document
															.getElementById("total_venta").value);
									formData2
											.append(
													"valoriva",
													document
															.getElementById("total_venta_iva").value);
									var xhr2 = new XMLHttpRequest();
									xhr2
											.open("POST",
													"http://localhost:8080/registrardetalleventa");
									xhr2.send(formData2);
								}

							}
							var element = document.getElementById("error");
							element.classList.add("visually-hidden");
							var element2 = document.getElementById("correcto");
							element2.classList.remove("visually-hidden");
						}, 1500);

			} catch (error) {
				var element = document.getElementById("error");
				element.classList.remove("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.add("visually-hidden");
			}
			}




=======
	
	<script src="js/cliente.js"></script>
>>>>>>> Stashed changes

	<nav class="navbar fixed-bottom navbar-dark bg-dark">
		<div class="row justify-content-between">
			<div class="col-4">
				<a class="navbar-brand links" href="#"><i class="fas fa-code"></i>
					Grupo 4 <i class="fas fa-code-branch"></i></a>
			</div>
		</div>
	</nav>
</script>

	<!-- <script src="js/cliente.js"></script> -->

</body>
</html>