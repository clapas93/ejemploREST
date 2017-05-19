$.urlParam = function(name){
    var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
    return results[1] || 0;
};

var dir = 'http://localhost:8091/JAXRS/NutriNET/Cliente';
var id = $.urlParam('cliente_id');

$.ajax({
    url: dir + '/' + id,
    type : "GET", 
    dataType : 'json',
    success: function(arr) {
    	console.log(arr);
    	$('#cliente tbody').append('<tr><td>' + arr.id + '</td><td>' + arr.nombre + '</td><td>' + arr.apellidos 
      		+ '</td><td>' + arr.usuario + '</td><td>' + arr.correo + '</td><td>' + arr.password 
      		+ '</td><td>' + arr.edad + '</td><td>' + arr.peso + '</td><td>' + arr.estatura + '</td></tr>');
    },
    error: function(result){
    	alert("No se pudo cargar la información del cliente con id" + id);
    }
});

// Tuve problemas con esta accion
/*
$("#put_boton").click(function(){
	var valores = { 
		peso : $("#peso"),
		estatura : $("#estatura")
	};
	$.ajax({
	        url: dir + '/update/' + id,
	        type: 'PUT',
	        async:true,
	        data: valores,
	        success: function(result){
	        	console.log(result);
	        },
	        error: function(result){
	        	alert("No se pudo modificar el cliente con id" + id);
	        }
	});
});
*/
