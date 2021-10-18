<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>


<!-- paquete de caracteres -->
<meta charset="utf-8">
<!-- Tama�o de la pantalla -->
<meta name="viewport" content="width=device-width">
<!-- titulo de la pesta�a -->
<title>Reportes</title>
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

<!--Cargando mi hoja de estilo-->
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

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<h5> <i class="far fa-hand-pointer"></i> ESCOJA SU OPCI�N: <i class="far fa-hand-pointer"></i></h5>
	<div class="container mt-5">
		<div class="row">
			<div class="col align-items-start mt-5"></div>
			<div class="col align-items-center ms-1">
				<button type="button" class="btn1 btn-success"
					onclick="window.location.href='reporteusuarios.jsp'">
					<i class="fas fa-users"></i> Listado de Usuarios
				</button>
			</div>
			<div class="col align-items-end"></div>
		</div>

		<div class="row">
			<div class="col align-items-start mt-5"></div>
			<div class="col align-items-center ms-2">
				<button type="button" class="btn1 btn-success"
				onclick="window.location.href='reporteclientes.jsp'">
					<i class="fas fa-clipboard-list"></i> Listado de Clientes
				</button>
			</div>
			<div class="col align-items-end"></div>
		</div>

		<div class="row">
			<div class="col align-items-start mt-5"></div>
			<div class="col align-items-center ms-2">
				<button type="button" class="btn1 btn-success" onclick="window.location.href='ventascliente.jsp'">
					<i class="fas fa-hand-holding-usd"></i> Ventas por Cliente
				</button>
			</div>
			<div class="col align-items-end"></div>
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

</body>
</html>