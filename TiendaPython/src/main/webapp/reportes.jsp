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


<script>
	var baseurl = "http://localhost:8080/listarproductos";
	function loadproductos() {
		var xmlhttp = new XMLHttpRequest();
		xmlhttp.open("GET", baseurl, true);
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
				var productos = JSON.parse(xmlhttp.responseText);
				var tbltop = "<table class='table table-dark table-striped'><tr><th>Codigo_Producto</th><th>IVA_Compra</th><th>NIT_Proveedor</th><th>Nombre_Producto</th><th>Precio_Compra</th><th>Precio_Venta</th></tr>";
				var main = "";
				for (i = 0; i < productos.lenght; i++) {
					main += "<tr><td>" + productos[i].codigo_producto
							+ "</td><td>" + productos[i].iva_compra
							+ "</td><td>" + productos[i].nit_proveedor
							+ "</td><td>" + productos[i].nombre_producto
							+ "</td><td>" + productos[i].precio_compra
							+ "</td><td>" + productos[i].precio_venta
							+ "</td></tr>";
				}
				var tblbottom = "</table>";
				var tbl = tbltop + main + tblbottom;
				document.getElementById("productosinfo").innerHTML = tbl;
			}
		};
		xmlhttp.send();
	}
	window.onload = function() {
		loadproductos();
	}
</script>


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
	
<h5> ESCOJA SU OPCI�N:</h5>
	<div class="container mt-5">
		<div class="row">
			<div class="col align-items-start mt-5"></div>
			<div class="col align-items-center ms-1">
				<button type="button" class="btn1 btn-success" onclick="">
				 <i class="fas fa-users"></i>    Listado de Usuarios
				</button>
			</div>
			<div class="col align-items-end"></div>
		</div>
		
		<div class="row">
			<div class="col align-items-start mt-5"></div>
			<div class="col align-items-center ms-2">
				<button type="button" class="btn1 btn-success" onclick="">
				 <i class="fas fa-clipboard-list"></i>    Listado de Clientes
				</button>
			</div>
			<div class="col align-items-end"></div>
		</div>
		
		<div class="row">
			<div class="col align-items-start mt-5"></div>
			<div class="col align-items-center ms-2">
				<button type="button" class="btn1 btn-success" onclick="">
				 <i class="fas fa-hand-holding-usd"></i>    Ventas por Cliente
				</button>
			</div>
			<div class="col align-items-end"></div>
		</div>
		
		
		
		
		
	</div>






	<!-- 	<div class="container"> -->
	<!-- 	<div class="row"> -->
	<!-- 		<div class="row justify-content-center mt-3"> -->
	<!-- 			<div class="col align-self-center"> -->
	<!-- 								<div class="col-xl-8 col-lg-8 col-md-8 col-sm-8"> -->
	<!-- 				<button type="button" class="btn btn-success" onclick=""> -->
	<!-- 					<i class="fas fa-users"></i> Listado de Usuarios -->
	<!-- 				</button> -->
	<!-- 			</div> -->
	<!-- 		</div> -->



	<!-- 		<div class="row justify-content-center mt-3"> -->
	<!-- 			<div class="col align-self-center"> -->
	<!-- 									<div class="col-xl-8 col-lg-8 col-md-8 col-sm-8"> -->
	<!-- 				<button type="button" class="btn btn-success" onclick=""> -->
	<!-- 					<i class="fas fa-clipboard-list"></i> Listado de Clientes -->
	<!-- 				</button> -->
	<!-- 			</div> -->
	<!-- 		</div> -->


	<!-- 		<div class="row justify-content-center mt-3"> -->
	<!-- 			<div class="col align-self-center"> -->
	<!-- 									<div class="col-xl-8 col-lg-8 col-md-8 col-sm-8"> -->
	<!-- 				<button type="button" class="btn btn-success" onclick=""> -->
	<!-- 					<i class="fas fa-hand-holding-usd"></i> Ventas por Cliente -->
	<!-- 				</button> -->
	<!-- 			</div> -->
	<!-- 		</div> -->
	<!-- 	</div> -->
	<!-- 	</div> -->
	<!-- 			</div> -->
	<!-- 		</div> -->
	<!-- 	</div> -->


	<nav class="navbar fixed-bottom navbar-dark bg-dark">
		<div class="row justify-content-between">
			<div class="col-4">
				<a class="navbar-brand links" href="#"><i class="fas fa-code"></i>
					Grupo 4 <i class="fas fa-code-branch"></i></a>
			</div>
		</div>
	</nav>
	<script>
		function subirArchivo() {

			try {

				var csvFile = document.getElementById("archivo");

				var input = csvFile.files[0];
				var reader = new FileReader();

				reader.onload = function(e) {

					var text = e.target.result;

					var arrayLineas = text.split("\n");

					var xhr = new XMLHttpRequest();
					xhr.open("DELETE",
							"http://localhost:8080/eliminartodoproducto", true);
					xhr.send();

					for (var i = 0; i < arrayLineas.length; i += 1) {
						var arraydatos = arrayLineas[i].split(",");

						if (arrayLineas[i] == "") {
							continue;
						}

						for (var j = 0; j < arraydatos.length; j += 1) {
							console.log(i + " " + j + "->" + arraydatos[j]);
						}

						var formData = new FormData();
						formData.append("codigo_producto", arraydatos[0]);
						formData.append("iva_compra", arraydatos[1]);
						formData.append("nit_proveedor", arraydatos[2]);
						formData.append("nombre_producto", arraydatos[3]);
						formData.append("precio_compra", arraydatos[4]);
						formData.append("precio_venta", arraydatos[5]);

						var xhr = new XMLHttpRequest();
						xhr.open("POST",
								"http://localhost:8080/registrarproducto");

						xhr.send(formData);
					}

					var element = document.getElementById("error");
					element.classList.add("visually-hidden");
					var element2 = document.getElementById("correcto");
					element2.classList.remove("visually-hidden");

					document.getElementById("archivo").value = "";

				};

				reader.readAsText(input);
			} catch (error) {
				var element = document.getElementById("error");
				element.classList.remove("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.add("visually-hidden");

				document.getElementById("archivo").value = "";
			}
		}
	</script>

</body>
</html>