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
	<h2>Cliente</h2>
	<div class="table-responsive">
	<table id="cliente" class="table">
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
    
    
    
    <h3>Modifica peso y estatura</h3>
    <div class="form-group">
    	<div class="row">
			<label for="peso" class="col-xs-2 control-label">Peso:</label>
			<div class="col-xs-4">
				<input type="text" id="peso" class="form-control"/>
			</div>
		</div>
	</div>
	<div class="form-group">
		<div class="row">
			<label for="estatura" class="col-xs-2 control-label">Estatura:</label>
			<div class="col-xs-4">
				<input type="text" id="estatura" class="form-control">
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-xs-offset-2 col-xs-10">
			<button id="put_boton" class="btn btn-primary">Modificar</button>
		</div>
	</div>
	
	
	
</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript" src="public/js/cliente.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>