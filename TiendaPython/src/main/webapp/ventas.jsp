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
			<br> <br>

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
						style="height: 2px; border-width: 2; color: gray; background-color: blue">
				</div>

				<!-- Productos -->

				<div class="col col-md-3">
					<div class="input-group">
						<span class="input-group-addon">Cod Producto:</span> <input
							id="codigo_producto1" type="text" class="form-control"
							onchange="producto1()" name="codigo_producto"
							placeholder="codigo_producto" required>
					</div>
				</div>
				<div class="col col-md-4">
					<div class="input-group">
						<span class="input-group-addon">Nombre Producto:</span> <input
							id="nombre_producto1" type="text" class="form-control"
							name="codigo_producto1" disabled>
					</div>
				</div>

				<div class="col col-md-2">
					<div class="input-group">
						<span class="input-group-addon">Cantidad:</span> <input
							id="cant_producto" type="text" class="form-control"
							onchange="producto1()" name="cedula" placeholder="Cant." required>
					</div>
				</div>
				<div class="col col-md-3">
					<div class="input-group">
						<span class="input-group-addon">Vlr. Total:</span> <input
							id="valor_total" type="text" class="form-control"
							name="valor_total" disabled>
					</div>
				</div>
				<!-- Productos -->

				<div class="col col-md-3">
					<div class="input-group">
						<span class="input-group-addon">Cod Producto:</span> <input
							id="codigo_producto1" type="text" class="form-control"
							onchange="enviar()" name="codigo_producto"
							placeholder="codigo_producto" required>
					</div>
				</div>
				<div class="col col-md-4">
					<div class="input-group">
						<span class="input-group-addon">Nombre Producto:</span> <input
							id="nombre_producto1" type="text" class="form-control"
							name="codigo_producto1" disabled>
					</div>
				</div>

				<div class="col col-md-2">
					<div class="input-group">
						<span class="input-group-addon">Cantidad:</span> <input
							id="cant_producto" type="text" class="form-control"
							onchange="producto1()" name="cedula" placeholder="Cant." required>
					</div>
				</div>
				<div class="col col-md-3">
					<div class="input-group">
						<span class="input-group-addon">Vlr. Total:</span> <input
							id="valor_total" type="text" class="form-control"
							name="valor_total" disabled>
					</div>
				</div>
				<!-- Productos -->

				<div class="col col-md-3">
					<div class="input-group">
						<span class="input-group-addon">Cod Producto:</span> <input
							id="codigo_producto1" type="text" class="form-control"
							onchange="enviar()" name="codigo_producto"
							placeholder="codigo_producto" required>
					</div>
				</div>
				<div class="col col-md-4">
					<div class="input-group">
						<span class="input-group-addon">Nombre Producto:</span> <input
							id="nombre_producto1" type="text" class="form-control"
							name="codigo_producto1" disabled>
					</div>
				</div>

				<div class="col col-md-2">
					<div class="input-group">
						<span class="input-group-addon">Cantidad:</span> <input
							id="cant_producto" type="text" class="form-control"
							onchange="producto1()" name="cedula" placeholder="Cant." required>
					</div>
				</div>
				<div class="col col-md-3">
					<div class="input-group">
						<span class="input-group-addon">Vlr. Total:</span> <input
							id="valor_total" type="text" class="form-control"
							name="valor_total" disabled>
					</div>
					<hr
				style="height: 2px; border-width: 2; color: gray; background-color: blue">
				</div>
			</form>
			
			<form>

				<div class="row justify-content-end mt-3">
					<div class="col-sm-3">
						<div class="input-group">
							<span class="input-group-addon">Total Venta:</span> <input
								id="tventa" type="text" class="form-control" name="tventa"
								disabled>
						</div>
					</div>
				</div>
				
				<div class="row justify-content-end mt-3">
					<div class="col-sm-3">
						<div class="input-group">
							<span class="input-group-addon">Total Iva:</span> <input
								id="tiva" type="text" class="form-control" name="tventa"
								disabled>
						</div>
					</div>
				</div>
				
				<div class="row justify-content-end mt-3">
					<div class="col-sm-3">
						<div class="input-group">
							<span class="input-group-addon">Total Venta + IVA:</span> <input
								id="ttotal" type="text" class="form-control" name="tventa"
								disabled>
						</div>
					</div>
				</div>

				<div class="row justify-content-center mt-3">
					<div class="col-md-3">
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
	</div><br><br>
	<script src="js/cliente.js"></script>
	<div class="footer">
		<div class="col-4">
			<i class="fas fa-code"></i> Grupo 4 <i class="fas fa-code-branch"></i>
		</div>
	</div>
</body>
</html>