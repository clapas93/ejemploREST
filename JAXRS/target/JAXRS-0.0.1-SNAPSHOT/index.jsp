<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
	<h1>Lista de Clientes</h1>
	<table id="clientes">
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
	
	<div>
	<h2>Agregar Cliente</h2>
	<!-- <form id="cliente_form" method="post">-->
	Nombre:<input type="text" value="nombre" id="nombre"/> 
	Apellidos:<input type="text" value="apellidos" id="apellidos"/> 
	Correo:<input type="text" value="correo@gmail" id="correo"/>
	Usuario:<input type="text" value= "usuario" id="usuario"/> 
	Contraseña:<input type="password" value="password" id="password"/> 
	Edad:<input type="text" value="0" id="edad"/>
	<button id="agregar_boton">Agregar</button>
	<!--</form>-->
	</div>
	
	<div>
	<h2>Modificar un cliente</h2>
	ID: <input type="text" id="get_cId"/>
	<button id="buscar_boton">Modificar</button>
	</div>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript" src="public/js/index.js"></script>
</body>
</html>