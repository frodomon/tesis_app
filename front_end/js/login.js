$(document).ready(function(){
	$( "form" ).submit(function( event ) {
  		event.preventDefault();
  		var alias = $("#alias").val()
  		var pwd = $("#password").val()
  		var jsonUrl = "http://0.0.0.0:3000/users/login/"+alias+"/"+pwd+".json"
  		$.getJSON(jsonUrl, function(data){
  			if (data.login){
  				alert("Login Succesful")
  			}
  			else{
  				alert("password equivocado")
  			}
      	});
	});
});