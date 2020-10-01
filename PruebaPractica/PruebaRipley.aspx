<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PruebaRipley.aspx.cs" Inherits="PruebaPractica.PruebaRipley" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="width=device-width, initial scale=1, shrink-to-fit=no" />
    <meta charset="utf-8" />
    <link rel="stylesheet" type="text/css" href="Scripts/css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="Scripts/fontawesome/css/all.min.css"/>
    
    
    <title>Inicio</title>
</head>
<body>

<div class="container bg-light">
	<div class="row">
		<!-- ************************BARRA DE FOTO DE LA EMPRESA************************** -->
		<div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 bg-warning">
			<a href="#" class="navbar-brand">
				<img class="img-fluid" src="Scripts/img/images.png"/>
			</a>		
		</div>


		<div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-6 form-inline bg-light justify-content-center mt-2 mb-2">
					
			<div class="dropdown">
				<button type="button" class="btn btn-warning text-light dropdown-toggle" data-toggle="dropdown"><i class="fas fa-list mr-1"></i>Categoria</button>
				<div class="dropdown-menu bg-warning">
					<a href="#" class="dropdown-item text-light bg-warning">Smartphone</a>
					<a href="#" class="dropdown-item text-light bg-warning">Televisores</a>
					<a href="#" class="dropdown-item text-light bg-warning">Audio</a>
				</div>
			</div>
				
			<input class="form-control mr-2 ml-2 w-50" placeholder="Buscar"/>
			<button value="Buscar" class="btn btn-warning text-light w-20"><i class="fas fa-search"></i></button>
				
		</div>

		<div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-6 bg-warning">
			
			<nav class="navbar navbar-expand navbar-expand-md form-inline">
						
			<!-- THE NEXT BUTTON  WAS DESACTIVATED-->				
				<button class="navbar-toggler border-1" type="button" data-toggle="collapse" data-target="#uno">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse justify-content-center" id="uno">
					<ul class="navbar-nav">

						<li class="nav-item"> <a class="nav-link text-white h-20" href="#"><i class="fas fa-home mr-1"></i>Inicio</a></li>
						<li class="nav-item"> <a class="nav-link text-white h-20" href="#"><i class="fas fa-map-pin mr-1"></i>Sucursales</a></li>
						<li class="nav-item"> <a class="nav-link text-white h-20" href="#"><i class="fas fa-building mr-1"></i>Empresa</a></li>
						<li class="nav-item dropdown"> 
						<a class="nav-link text-white h-20"  id="lblLogin" runat="server" data-toggle="dropdown"><i class="fas fa-user mr-1"></i>Login</a>
						
							<div class="dropdown-menu bg-warning">
								<a class="dropdown-item bg-warning text-white" id="btnLoginMenu" runat="server"  data-target="#mimodal1" data-toggle="modal"><i class="far fa-user mr-1"></i>Iniciar Sesion</a>
								<a class="dropdown-item bg-warning text-white" id="btnRegisMenu" runat="server" data-target="#mimodal2" data-toggle="modal"><i class="fas fa-plus mr-1"></i>Registrar</a>
								<a class="dropdown-item bg-warning text-white" visible="false" id="btnCerrarSesion" runat="server" data-target="#mimodal2" data-toggle="modal"><i class="fas fa-plus mr-1"></i>Cerrar Sesion</a>							
							</div>
						</li>
					</ul>
				</div>			 	
			</nav>
		</div>	
	</div>
	
	<div id="data2">
      
      <div id="info" class="col">
		  

      </div>
      
      <img id="image1" src="" alt="image1" class="img-fluid" />
		<button id="btnLlamada" class="btn btn-primary">Presione Aqui</button>
      
    </div>
   

	
</div>

<!-- POPUP INICIAR SESION-->
<div class="modal fade" id="mimodal1">
	<div class="modal-dialog">
		<div class="modal-content">
			
				<!-- cabezera-->
			<div class="modal-header bg-warning">
				<h3 class="modal-title display-5">Iniciar Sesion</h3>
				<button type="button" class="close" data-dismiss="modal"><i class="fas fa-times"></i></button>
			</div>
			<!--body -->
			<div class="modal-body">
				<div class="col-12">
					
					<div class="form-group">
						<label for="correo">Correo</label>
						<input type="email" runat="server" name="correo" placeholder="Correo" class="form-control" ID="txtCorreoL"/>
                        
					</div>
				</div>
				<div class="col-12">
					
					<div class="form-group">
						<label for="password">Contraseña</label>
						<input type="password" runat="server" name="password" placeholder="Contraseña" class="form-control" ID="txtContraseñaL"/>
					</div>
				</div>
			</div>
			<!-- footer-->
			<div class="modal-footer bg-warning">
				<button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar<i class="fas fa-times ml-2"></i></button>
				<button type="button" id="btnLoginIndex" runat="server"  class="btn btn-primary" data-dismiss="modal" >Iniciar Sesion<i class="fas fa-sign-in-alt ml-2"></i></button>
			</div>
					
		</div>
	</div>
</div>

<!--POPUP REGISTRARSE -->

<div class="modal fade" id="mimodal2">
	<div class="modal-dialog">
		<div class="modal-content">
			<!-- cabezera-->
			<div class="modal-header bg-warning">
				<h3 class="modal-title display-5">Registrarse</h3>
				<button type="button" class="close" data-dismiss="modal"><i class="fas fa-times"></i></button>
			</div>
			<!--body -->
			<div class="modal-body">
				<div class="col-12">
					
					<div class="form-group">
						<label for="correo">Nombre</label>
						<input type="text" name="nombre" placeholder="Nombre"  class="form-control"/>
					</div>
				</div>
				<div class="col-12">
					
					<div class="form-group">
						<label for="correo">Apellido</label>
						<input type="text" name="apellido" placeholder="Apellido" class="form-control"/>
					</div>
				</div>
				<div class="col-12">
					
					<div class="form-group">
						<label for="correo">Correo</label>
						<input type="email" name="correo" placeholder="Correo" class="form-control"/>
					</div>
				</div>
				<div class="col-12">		
					<div class="form-group">
						<label for="password">Contraseña</label>
						<input type="password" name="password" placeholder="Contraseña" class="form-control"/>
						<small class="form-text text-muted"></small>
					</div>
				</div>
				<div class="col-12">		
					<div class="form-group">
						<label for="password">Confirmar Contraseña</label>
						<input type="password" name="password" placeholder="Confirmar Contraseña" class="form-control"/>
					</div>
				</div>
				 <div class="form-check col-12">
				 	<div class="form-group">
				 		<input type="checkbox" class="form-check-input" id="exampleCheck1"/>
				    <label class="form-check-label" for="exampleCheck1">Acepto los Tyc</label>
				 	</div>				    
			  </div>
			</div>
			<!-- footer-->
			<div class="modal-footer bg-warning">
				<button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar<i class="fas fa-times ml-2"></i></button>
				<button type="button" id="btnRegistrar"  class="btn btn-primary " data-dismiss="modal">Iniciar Sesion<i class="fas fa-sign-in-alt ml-2"></i></button>
			</div>

		</div>
	</div>
</div>

	<script src="Scripts/js/jquery-3.5.1.min.js"></script>
    <script src="Scripts/js/popper.min.js"></script>
    <script src="Scripts/js/bootstrap.min.js"></script>
	
	<script>
		$(function () {
            $("#btnLlamada").click(function () {llamada() })
			function llamada() {
                var settings = {
                    "url": "https://simple.ripley.cl/api/v2/products?format=json&partNumbers=2000379450763",
                    "method": "GET",
                    "timeout": 0,
                    "headers": {
                        "Cookie": "__cfduid=da331065b66ac66d555c7a7eb880d49231601508670; heroku-session-affinity=AECDaANoA24IAeO+Vpj///8HYgAHwv5iAAwjl2EGbAAAAANtAAAABXdlYi40bQAAAAV3ZWIuMm0AAAAFd2ViLjFqtrY1qE4Um2BlOgFTdP6E7faAWc0_"
                    },
                };

                $.ajax(settings).done(function (response) {
					console.log(response);
					alert("Mostrando datos");
                });

				/* 
				 PARA CORRER EL CODIGO, SE NECESITA DESACTIVAR CORS, ESTO SE REALIZA A TRAVEZ DE CMD Y EL SIGUIENTE COMIANDO:
				C:\Program Files\Google\Chrome\Application\chrome.exe" --disable-web-security  --user-data-dir=~/chromeTemp

				Ademas, para ordenar el arreglo de texto de la API, se uso Postman para comprobar los datos entregados por la API.

				 */

                $.getJSON("https://simple.ripley.cl/api/v2/products?format=json&partNumbers=2000379450763", function (result) {

                    $("#info").remove()

                  

                    $("#data2").append('<div id="info"\
                                  <table class="table table-dark"> \
                                    <tr>  \
                                      <th>NOMBRE</th>\
                                      <th>ID</th>\
                                      <th>PRECIO</th>\
										<th>LISTA DE PRECIO</th>\
										<th>CARDPRICE</th>\
                                    </tr>\
									</br>\
									<tr>  \
                                      <th>'+ result[0].name + '</th>\
                                      <th>'+ result[0].uniqueID + '</th>\
                                      <th>'+ result[0].prices["offerPrice"] + '</th>\
										<th>'+ result[0].prices["listPrice"] + '</th>\
										<th>'+ result[0].prices["cardPrice"] + '</th>\
                                    </tr>\
									\
                                  </table>\
                                  </div>');

                    try {
                        $("#image1").attr("src", result[0].fullImage );
                    } catch (error) {
                        $("#image1").attr("src", );
                    }
                });
            }         
		});    

    </script>

</body>
</html>
