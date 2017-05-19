var dir = 'http://localhost:8091/JAXRS/NutriNET/'; 
$.ajax({
    url: dir + 'Cliente',
    type: 'GET',
    dataType: 'json',
    success: function(data){
    	console.log(data);
        $.each(data, function(i, arr){
      	  $('#clientes tbody').append('<tr><td>' + arr.id + '</td><td>' + arr.nombre + '</td><td>' + arr.apellidos 
            		+ '</td><td>' + arr.usuario + '</td><td>' + arr.correo + '</td><td>' + arr.password 
            		+ '</td><td>' + arr.edad + '</td><td>' + arr.peso + '</td><td>' + arr.estatura + '</td></tr>');
        });
    },
    error: function(result){
    	alert("No se pudo cargar la lista de clientes");
    }
  });

$("#buscar_boton").click(function(){
	var id_val = $("#get_cId").val();
	console.log(id_val);
	window.location = 'cliente.jsp?cliente_id='+id_val;
});

$("#agregar_boton").click(function(){
	var cliente = {
			"id" : 0, //default, pero modificado en el servicio
			"nombre" : $("#nombre").val(),
			"apellidos" : $("#apellidos").val(),
			"correo" : $("#correo").val(),
			"usuario" : $("#usuario").val(),
			"password" : $("#password").val(),
			"edad" : parseInt($("#edad").val()),
			"peso" : 0,
			"estatura" : 0
	};
	console.log(cliente);
	
	$.ajax({
	    url: dir + 'Cliente/add',
	    type: 'POST',
	    contentType: "application/json",
	    mimeType: 'application/json',
	    dataType: 'json',
	    data: cliente,
	    success: function (result) {
            console.log(result);
            alert(result);
        },
	  });
	  
});
