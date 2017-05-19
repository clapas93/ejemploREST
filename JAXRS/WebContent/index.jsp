<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<center>
		<h1>NutriNET</h1>
	</center>
	
	<div>
	<h3>Lista de Clientes</h3>
	<div class="table-responsive">
	<table id="clientes" class="table">
      <thead>
        <tr>
            <td>id</td>
            <td>Nombre</td>
            <td>Apellidos</td>
            <td>Usuario</td>
            <td>Correo</td>
            <td>Contraseña</td>
            <td>Edad</td>
            <td>Peso</td>
            <td>Estatura</td>
        </tr>
      </thead>
      <tbody>
      </tbody>
	</table>
	</div>
	</div>
	
	<div>
	<h3>Agregar Cliente</h3>
	<!--<form id="cliente_form" method="post" class="form-horizontal">-->
	<div class="form-group">
		<div class="row">
			<label for="nombre" class="col-xs-2 control-label">Nombre:</label>
			<div class="col-xs-4">
				<input type="text" value="nombre" id="nombre" class="form-control"/>
			</div>
		</div>
	</div> 
	<div class="form-group">
		<div class="row">
			<label for="apellidos" class="col-xs-2 control-label">Apellidos:</label>
			<div class="col-xs-4">
				<input type="text" value="apellidos" id="apellidos" class="form-control"/>
			</div>
		</div>
	</div>
	<div class="form-group"> 
		<div class="row">
			<label for="correo" class="col-xs-2 control-label">Correo:</label>
			<div class="col-xs-4">
				<input type="text" value="correo@gmail" id="correo" class="form-control"/>
			</div>
		</div>
	</div>
	<div class="form-group">
		<div class="row">
			<label for="usuario" class="col-xs-2 control-label">Usuario:</label>
			<div class="col-xs-4">
				<input type="text" value= "usuario" id="usuario" class="form-control"/>
			</div>
		</div>
	</div>
	<div class="form-group"> 
		<div class="row">
			<label for="password" class="col-xs-2 control-label">Contraseña:</label>
			<div class="col-xs-4">
				<input type="password" value="password" id="password" class="form-control"/>
			</div>
		</div>
	</div>
	<div class="form-group">
		<div class="row"> 
			<label for="edad" class="col-xs-2 control-label">Edad:</label>
			<div class="col-xs-4">
				<input type="text" value="0" id="edad" class="form-control"/>
			</div>
		</div>
	</div>
	<div class="col-xs-offset-2 col-xs-10">
		<button id="agregar_boton" class="btn btn-primary">Agregar</button>
	</div>
	</div>
	
	<h3>Modificar un cliente</h3>
	<div class="form-group"> 
		<label for="edad" class="col-xs-1 control-label">ID: </label>
		<div class="col-xs-3">
			<input type="text" id="get_cId" class="form-control"/>
		</div>
		<div class="col-xs-7">
			<button id="buscar_boton" class="btn btn-primary">Buscar</button>
		</div>
	</div>

</div>	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript" src="public/js/index.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>