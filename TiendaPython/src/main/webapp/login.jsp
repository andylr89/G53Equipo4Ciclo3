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
<title>Tienda Python</title>

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
	<nav class="navbar navbar-dark bg-primary">
		<div class="container-fluid">
			<a class="navbar-brand links" href="index.html">
			<i class="fas fa-shopping-cart"></i> Tienda Python </a>
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="index.html">Home</a>
				</li>
			</ul>
		</div>
	</nav>


<!-- 	<section class="form-login"> -->
<!-- 	<div class="position-absolute top-50 start-50 translate-middle login"> -->
<!-- 	<h5><i class="fas fa-sign-in-alt"></i> Bienvenido </h5> -->
<!-- 	<input class= "controls" type= "text" name= "Usuario" value= "" placeholder="Usuario"><br> -->
<!-- 	<input class= "controls" type= "password" name= "Password" value= "" placeholder = "Contraseña"><br> -->
<!-- 	<input class= "buttons" type= "submit" name= "" value= "Ingresar"> -->
<!-- 	<input class = "buttons" type= "submit" name= "" value = "Registrarse"><br> -->
<!-- 	<p><a href="#">¿Olvidaste tu Contraseña?</a></p> -->
<!-- 	</div> -->
<!-- 	</section> -->


		<center>
		<h1>
			<br>
			<br> Bienvenido
		</h1>
	</center>

<!-- 	Contenedor de los botones y texto -->
	<div class="container">
		<div class="position-absolute top-50 start-50 translate-middle login">
			<div class="col-sm-8 main-section">
				<div class="modal-content">
					<div class="col-12 user-img">
						<img src="avatar.png" width="70">
					</div>
					<form class="col-12">
						<div class="form-group" id="user-group">
							<input id="inputuser" type="text" class="form-control"
								placeholder="Usuario">
						</div>
						<br>
						<div class="form-group" id="contraseña-group">
							<input id="inputpass" type="password" class="form-control"
								placeholder="Contraseña">
						</div>
						<br>
						<div style="margin: auto; text-align: center;">
							<button type="button" class="btn btn-primary"
								onclick="comparar()">
								<i class="fas fa-sign-in-alt"></i> Ingresar
							</button>
							<br>
							<div id="error" class="alert alert-danger visually-hidden"
								role="alert">Usuario o contraseña incorrecta!</div>
						</div>
					</form>
					<div class="col-12 forgot">
						<a href="#">Recordar contraseña</a>

					</div>
				</div>
			</div>
		</div>
	</div>



	<!-- Script que trae la informacion de la api y la compara con las entradas -->
	<script>
		function comparar() {
			//trayendo texto de input de username
			var x = document.getElementById("inputuser").value;
			//trayendo texto de input de password
			var y = document.getElementById("inputpass").value;
			//url de la api 
			var baseurl = "http://localhost:8080/listarusuarios";
			//creando un objeto de manipulacion de solicitudes
			var xmlhttp = new XMLHttpRequest();
			//abriendo la api
			xmlhttp.open("GET", baseurl, true);
			//funcion interna que compara la información
			xmlhttp.onreadystatechange = function() {
				//si se obtiene un 200 (Conexion correcta)
				if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
					//convirtiendo JSON en variable javascrip
					var usuarios = JSON.parse(xmlhttp.responseText);

					//verificando uno por uno si existe ese usuario
					for (i = 0; i < usuarios.length; i++) {

						//imprimiendo en la consola del navegador pata verificar
						console.log(usuarios);
						console.log(x);
						console.log(usuarios[i].usuario);
						console.log(y);
						console.log(usuarios[i].password);

						//si el nombre coincide
						if (usuarios[i].usuario === x) {
							//si la clave coincide
							if (usuarios[i].password === y) {
								console.log("si");
								var element = document.getElementById("error");
								element.classList.add("visually-hidden");
								document.getElementById("inputuser").value = "";
								document.getElementById("inputpass").value = "";
								window.location.href = "listausuarios.jsp";
								return;
							} else {
								//si la clave NO coincide
								console.log("error clave");
								var element = document.getElementById("error");
								element.classList.add("visually-hidden");
								document.getElementById("inputuser").value = "";
								document.getElementById("inputpass").value = "";
								return;
							}
						}
					}
					//Si no existe el usuario
					console.log("no encontrado");

					//quitando la capacidad de ocultacion del error para mostrarlo
					var element = document.getElementById("error");
					element.classList.remove("visually-hidden");
					document.getElementById("inputuser").value = "";
					document.getElementById("inputpass").value = "";
					return;
				}
			};
			//ejecutando
			xmlhttp.send();
		}
	</script>

</body>

</html>