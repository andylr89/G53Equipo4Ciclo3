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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
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
		<div class="container text-center">
			<h3>
				<span class="glyphicon glyphicon-shopping-cart"> Registrar
					Venta</span>
			</h3>
		</div>
		<br>


		<div class="container">
			<div class="row">
				<div class="col-sm-3 pull-right">
					<div class="input-group">
						<span class="input-group-addon">Consecutivo:</span> <input
							id="consecutivo" type="text" class="form-control"
							name="Consecutivo" disabled>
					</div>
					<hr
					style="height: 2px; border-width: 2; color: gray; background-color: blue">
				</div>
				<br>
				<br>
				
				<form>
					<div class="col col-md-6">
						<div class="input-group">
							<span class="input-group-addon">Cedula:</span> <input
								id="cliente_search" type="text" class="form-control"
								onchange="enviar()" name="cedula" placeholder="Cedula Cliente"
								required>
						</div>
						<div class="input-group">
							<span class="input-group-addon">Nombre:</span> <input
								id="nombre_cliente" type="text" class="form-control"
								name="Nombre" disabled>
						</div>
						<hr
					style="height: 2px; border-width: 2; color: gray; background-color: blue">
					</div>

					<div class="col col-md-6">
						<div class="input-group">
							<span class="input-group-addon">Usuario:</span> <input
								id="cedula_usuario" type="text" class="form-control"
								onchange="traerNombreUsuario()" name="cedula"
								placeholder="Cedula Usuario" required>
						</div>
						<div class="input-group">
							<span class="input-group-addon">Nombre:</span> <input
								id="nombre_usuario" type="text" class="form-control"
								name="Nombre" disabled>
						</div>
						<hr
						style="width: 94%; height: 2px; border-width: 2; color: gray; background-color: yellow">
					</div>
						
				</form>
				<br>
				<br>
				<br>


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
						class="input-group-text1 ms-2" id="basic-addon6">Cant. </span> <input
						type="text" class="form-control" id="cant_producto"
						onchange="pr()"> <span class="input-group-text1 ms-2"
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
						class="input-group-text1 ms-2" id="basic-addon6">Cant. </span> <input
						type="text" class="form-control" id="cant_producto"
						onchange="pr()"> <span class="input-group-text1 ms-2"
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
						class="input-group-text1 ms-2" id="basic-addon6">Cant. </span> <input
						type="text" class="form-control" id="cant_producto"
						onchange="pr()"> <span class="input-group-text1 ms-2"
						id="basic-addon7">Vlr. Total </span> <input type="text"
						class="form-control" id="valor_total" readonly="readonly">
				</div>
				<!-- HEAD -->

				<div class="row justify-content-end mt-3">
					<div class="col-xl-2 col-lg-2 col-md-3 col-sm-3">
						<span class="total_venta"> Total Venta</span> <input type="text"
							class="form-control" id="tventa" readonly="readonly">
					</div>
				</div>

				<div class="row justify-content-end mt-3">
					<div class="col-xl-2 col-lg-2 col-md-3 col-sm-3">
						<span class="total_iva me-8">Total IVA </span><input type="text"
							class="form-control" id="tventa" readonly="readonly">
					</div>

				</div>

				<div class="row justify-content-end mt-3">
					<div class="col-xl-2 col-lg-2 col-md-3 col-sm-3">
						<span class="total_iva">Total Venta + IVA </span> <input
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

		<script src="js/cliente.js"></script>

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