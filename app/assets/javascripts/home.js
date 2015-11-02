$(document).ready(function(){
	$( "form" ).submit(function( event ) {
  		event.preventDefault();
  		var alias = $("#alias").val()
  		var pwd = $("#password").val()
  		var jsonUrl = "http://0.0.0.0:3000/users/login/"+alias+"/"+pwd+".json"
  		$.getJSON(jsonUrl, function(data){
  			if (data.login){
  				alert("Login Succesful");
          $(".user_logged").show();
          $(".user_no_logged").hide();
          $("#userName").text(alias);
  			}
  			else{
  				alert("password equivocado")
  			}
      	});
      $(".header-down").hide();
	});
  $('#sign_in').on('click',function(e){
    e.preventDefault();
    $(".header-down").show();
  });
});