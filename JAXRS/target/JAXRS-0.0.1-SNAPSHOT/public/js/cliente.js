$.urlParam = function(name){
    var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
    return results[1] || 0;
};

var dir = 'http://localhost:8091/JAXRS/NutriNET/';
var id = $.urlParam('cliente_id');

$.ajax({
    url: dir + 'Cliente/' + id,
    type : "GET", 
    dataType : 'json',
}).done(function(data) {
    console.log(data);
    $('#cliente').append(data.nombre);
})
.fail(function(data) {

})
.always(function(data) {
	  
});

