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
<title>Actualizar Producto</title>
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
			</a> <a class="navbar-brand links" href="listaproductos.jsp"> <i
				class="fas fa-money-check-alt"></i> Ventas
			</a> <a class="navbar-brand links" href="listausuarios.jsp"> <i
				class="fas fa-clipboard-list"></i> Reportes
			</a>
		</div>
	</nav>

	<div style="padding-left: 5px">
		<h1>
			<i class="fas fa-sync"></i> Datos a actualizar del Producto
		</h1>
		<div class="container">


			<div id="error" class="alert alert-danger visually-hidden"
				role="alert">Error al actualizar el Producto, verifique que informacion ingresada sea valida</div>

			<div id="correcto" class="alert alert-success visually-hidden"
				role="alert">Producto actualizado con exito</div>

			<form id="form1">
				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon1">Codigo Producto</span> <input
						type="text" class="form-control"
						placeholder="Inserte codigo del Producto aqui..."
						aria-describedby="basic-addon1" required id="cedula_usuario">
				</div>

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon2">IVA Compra</span> <input
						type="text" class="form-control"
						placeholder="Inserte valor IVA aqui..."
						aria-describedby="basic-addon2" required id="iva_compra">
				</div>

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon3">NIT Proveedor</span>
					<input type="text" class="form-control"
						placeholder="Inserte NIT del Proveedor aqui..."
						aria-describedby="basic-addon3" required id="nit_proveedor">
				</div>

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon4">Nombre Producto</span> <input
						type="text" class="form-control"
						placeholder="Inserte nombre del producto aqui..."
						aria-describedby="basic-addon4" required id="user">
				</div>

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon5">Precio Compra</span> <input
						type="text" class="form-control"
						placeholder="Inserte precio compra aqui..."
						aria-describedby="basic-addon5" required id="precio_compra">
				</div>
				
				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon5">Precio Venta</span> <input
						type="text" class="form-control"
						placeholder="Inserte precio venta aqui..."
						aria-describedby="basic-addon5" required id="precio_venta">
				</div>
			</form>

			<button type="button" class="btn btn-warning" onclick="actualizar()">
				<i class="fas fa-edit"></i> Actualizar Producto
			</button>

			<h1>
				<i class="fas fa-cogs"></i> Operaciones
			</h1>
			<div class="container">
				<div class="row">
					<button type="button" class="btn btn-success"
						onclick="window.location.href='/insertarproducto.jsp'">
						<i class="fas fa-plus-circle"></i> Agregar Producto
					</button>
					<button type="button" class="btn btn-danger"
						onclick="window.location.href='/eliminarproducto.jsp'">
						<i class="fas fa-trash"></i> Eliminar Producto
					</button>
					<button type="button" class="btn btn-warning"
						onclick="window.location.href='/actualizarproducto.jsp'">
						<i class="fas fa-pen-alt"></i> Actualizar Producto
					</button>
					<button type="button" class="btn btn-primary"
						onclick="window.location.href='/buscarproducto.jsp'">
						<i class="fas fa-search"></i> Buscar un Producto
					</button>
					<button type="button" class="btn btn-primary"
						onclick="window.location.href='/listaproductos.jsp'">
						<i class="fas fa-search"></i> Listar todos los Productos
					</button>
				</div>
			</div>
		</div>

	</div>
	<nav class="navbar fixed-bottom navbar-dark bg-dark">
		<div class="row justify-content-between">
			<div class="col-4">
				<a class="navbar-brand links" href="#"><i class="fas fa-code"></i>
					Grupo 4 <i
					class="fas fa-code-branch"></i></a>
			</div>
		</div>
	</nav>
	<script>
		function actualizar() {
			var x = document.getElementById("codigo_producto").value;
			var y = document.getElementById("iva_compra").value;
			var req = new XMLHttpRequest();
			var coincidencia = false;
			req.open('GET', 'http://localhost:8080/listarusuarios', false);
			req.send(null);
			var productos = null;
			if (req.status == 200)
				productos = JSON.parse(req.responseText);
			console.log(JSON.parse(req.responseText));

			for (i = 0; i < productos.length; i++) {
				console.log(productos[i].codigo_producto);
				console.log(productos[i].iva_compra);
				if (productos[i].codigo_producto === x) {
					console.log(productos[i].codigo_producto + " " + x);
					coincidencia = true
					break;
				}

				if (usuarios[i].iva_compra === y) {
					console.log(productos[i].iva_compra + " " + y);
					coincidencia = true
					break;
				}
			}
			console.log(coincidencia);

			if (coincidencia != false) {
				var formData = new FormData();
				formData.append("codigo_producto", document
						.getElementById("codigo_producto").value);
				formData.append("iva_compra", document
						.getElementById("iva_compra").value);
				formData.append("nit_proveedor", document
						.getElementById("nit_proveedor").value);
				formData.append("nombre_producto",
						document.getElementById("nombre_producto").value);
				formData.append("precio_compra",
						document.getElementById("precio_compra").value);
				formData.append("precio_venta",
						document.getElementById("precio_venta").value);
				var xhr = new XMLHttpRequest();
				xhr.open("PUT", "http://localhost:8080/actualizarproducto");

				var element = document.getElementById("error");
				element.classList.add("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.remove("visually-hidden");

				document.getElementById("codigo_producto").value = "";
				document.getElementById("iva_compra").value = "";
				document.getElementById("nit_proveedor").value = "";
				document.getElementById("nombre_producto").value = "";
				document.getElementById("precio_compra").value = "";
				document.getElementById("precio_venta").value = "";
				xhr.send(formData);

			} else {
				var element = document.getElementById("error");
				element.classList.remove("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.add("visually-hidden");
				document.getElementById("codigo_producto").value = "";
				document.getElementById("iva_compra").value = "";
				document.getElementById("nit_proveedor").value = "";
				document.getElementById("nombre_producto").value = "";
				document.getElementById("precio_compra").value = "";
				document.getElementById("precio_venta").value = "";
			}
		}
	</script>

</body>
</html>