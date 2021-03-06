<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>


<!-- paquete de caracteres -->
<meta charset="utf-8">
<!-- Tama?o de la pantalla -->
<meta name="viewport" content="width=device-width">
<!-- titulo de la pesta?a -->
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
			</a> <a class="navbar-brand links" href="listausuarios.jsp"> <i
				class="fas fa-clipboard-list"></i> Reportes
			</a>
		</div>
	</nav>

	<div>
		<h2>
			<i class="fas fa-search"></i> Realizar un Registro
		</h2>
		<div class="container">


			<div id="error" class="alert alert-danger visually-hidden"
				role="alert">Error registro solicitado no existe</div>

			<form id="form1">
				<br>

				<div class="input-group mb-3">

					<span class="input-group-text1" id="basic-addon1">Cedula</span><br>
					<input type="text" class="form-control"
						placeholder="Inserte Cedula" aria-describedby="basic-addon1"
						required id="idsearch">

					<button type="button" class="btn btn-primary ms-2"
						onclick="enviar()">
						<i class="fas fa-search"></i> Consultar
					</button>

					<span class="input-group-text1 ms-5" id="basic-addon2">
						Cliente </span> <input type="text" class="form-control"
						aria-describedby="basic-addon2" required id="nombre_cliente"
						disabled="disabled"> <span class="input-group-text1 ms-5"
						id="basic-addon3">Consec.</span> <input type="text"
						class="form-control" aria-describedby="basic-addon3" required
						id="nombre_usuario" disabled="disabled">
				</div>

				<div class="input-group mb-3">
					<label for="CodProd" class="input-group-text" id="basic-addon4">Cod.
						Producto </label> <input type="text" class="form-control"
						aria-describedby="basic-addon4" required id="codigo_producto">

					<button type="button" class="btn btn-primary ms-2"
						onclick="enviar()">
						<i class="fas fa-search"></i> Consultar
					</button>

					<span class="input-group-text3 ms-2" id="basic-addon5">Nombre
						Producto </span> <input type="text" class="form-control"
						aria-describedby="basic-addon5" required id="nombre_producto"
						disabled="disabled"> <span class="input-group-text1 ms-2"
						id="basic-addon6">Cant. </span> <input type="text"
						class="form-control" aria-describedby="basic-addon6" required
						id="cant"> <span class="input-group-text1 ms-2"
						id="basic-addon7">Vlr. Total </span> <input type="text"
						class="form-control" aria-describedby="basic-addon7" required
						id="valor_total" disabled="disabled">
				</div>

				<div class="input-group mb-3">
					<label for="CodProd" class="input-group-text" id="basic-addon4">Cod.
						Producto </label> <input type="text" class="form-control"
						aria-describedby="basic-addon4" required id="codigo_producto">

					<button type="button" class="btn btn-primary ms-2"
						onclick="enviar()">
						<i class="fas fa-search"></i> Consultar
					</button>

					<label class="input-group-text3 ms-2" id="basic-addon5">Nombre
						Producto </label> <input type="text" class="form-control"
						aria-describedby="basic-addon5" required id="nombre_producto"
						disabled="disabled"> <span class="input-group-text1 ms-2"
						id="basic-addon6">Cant. </span> <input type="text"
						class="form-control" aria-describedby="basic-addon6" required
						id="cant"> <span class="input-group-text1 ms-2"
						id="basic-addon7">Vlr. Total </span> <input type="text"
						class="form-control" aria-describedby="basic-addon7" required
						id="valor_total" disabled="disabled">
				</div>

				<div class="input-group mb-3">
					<label for="CodProd" class="input-group-text" id="basic-addon4">Cod.
						Producto </label> <input type="text" class="form-control"
						aria-describedby="basic-addon4" required id="codigo_producto">

					<button type="button" class="btn btn-primary ms-2"
						onclick="enviar()">
						<i class="fas fa-search"></i> Consultar
					</button>

					<span class="input-group-text3 ms-2" id="basic-addon5">Nombre
						Producto </span> <input type="text" class="form-control"
						aria-describedby="basic-addon5" required id="nombre_producto"
						disabled="disabled"> <span class="input-group-text1 ms-2"
						id="basic-addon6">Cant. </span> <input type="text"
						class="form-control" aria-describedby="basic-addon6" required
						id="cant"> <span class="input-group-text1 ms-2"
						id="basic-addon7">Vlr. Total </span> <input type="text"
						class="form-control" aria-describedby="basic-addon7" required
						id="valor_total" disabled="disabled">
				</div>

				<div class="row justify-content-end">
					<div class="col-4">
						Total Venta <input type="text" required id="cant" id="tventa"
							name="tventa" disabled="disabled">
					</div>
				</div>
				<div class="row justify-content-end">
					<div class="col-4">
						Total IVA <input type="text" required id="cant" id="tventa"
							name="tventa" disabled="disabled">
					</div>
				</div>

				<div class="container">
				<div class="row justify-content-end">
						<div class="col-4">
							Total Venta + IVA <input type="text" required id="cant"
								id="tventa" name="tventa" disabled="disabled">
						</div>
						<button type="button" class="btn btn-primary"
						onclick="enviar()">
						<i class="fas fa-dollar-sign"></i> Confirmar
					</button>
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
	<script>
		function enviar() {

			var req = new XMLHttpRequest();
			var coincidencia = false;
			var user = document.getElementById("idsearch").value;
			req.open('GET', 'http://localhost:8080/consultacliente?cli='+ user, false);
			req.send(null);
			var usuario = null;
			if (req.status == 200)
				usuario = JSON.parse(req.responseText);
			console.log(JSON.parse(req.responseText));

			var element = document.getElementById("error");
			element.classList.add("visually-hidden");

			console.log(usuario.toString());

			if (usuario.toString() != "") {
				document.getElementById("nombre_cliente").value = usuario[0].nombre_cliente;
			} else {

			    alert("Error el documento " + user +  " solicitado no esta registrado como cliente");
				document.getElementById("idsearch").value = "";	
				document.getElementById("nombre_cliente").value = "";
			}
		}
	</script>

</body>
</html>