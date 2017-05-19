var dir = 'http://localhost:8091/JAXRS/NutriNET/'; 
$.ajax({
    url: dir + 'Cliente',
    type: 'GET',
    dataType: 'json',
  })
  .done(function(data) {
      console.log(data);
      $.each(data, function(i, arr){
    	  $('#clientes tbody').append('<tr><td>' + arr.id + '</td><td>' + arr.nombre + '</td><td>' + arr.apellidos 
          		+ '</td><td>' + arr.usuario + '</td><td>' + arr.correo + '</td><td>' + arr.password 
          		+ '</td><td>' + arr.edad + '</td><td>' + arr.peso + '</td><td>' + arr.estatura + '</td></tr>');
      });
  })
  .fail(function(data) {

  })
  .always(function(data) {
	  
  });

$("#buscar_boton").click(function(){
	var id_val = $("#get_cId").val();
	console.log(id_val);
	window.location = 'cliente.jsp?cliente_id='+id_val;
});

$("#agregar_boton").click(function(){
	//var cliente = $("#cliente_form").serialize();
	//alert(cliente);
	
	
	var cliente = {
			nombre: $("#nombre").val(),
			apellidos: $("#apellidos").val(),
			correo:$("#correo").val(),
			usuario:$("#usuario").val(),
			passwrod:$("#password").val(),
			edad:$("#edad").val()
	}
	console.log(cliente);
	
	$.ajax({
	    url: dir + 'Cliente/add',
	    type: 'POST',
	    contentType: "application/json",
	    mimeType: 'application/json',
	    dataType: 'json',
	    data: JSON.stringify(cliente),
	    success: function (result) {
            console.log(data);
            console.log(result);
        },
	  });
	  
});
