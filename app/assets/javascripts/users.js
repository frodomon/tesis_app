$(document).ready(function(){

  var jsonUrl = "http://0.0.0.0:3000/ubigeos/ubigeos/departamentos.json"
  $.getJSON(jsonUrl, function(data){
    $.each(data, function(i,obj){
      var option = $('<option />');
      option.attr('value', obj.ubigeo_id).text(obj.name);
      $('#departamento').append(option);
    });
  });

  $('#departamento').change(function(e){
    e.preventDefault;
    var optionSelected = $("option:selected", this);
    var departamento= this.value;
    var jsonUrlProvincias = "http://0.0.0.0:3000/ubigeos/ubigeos/provincias/"+departamento+".json"
    $.getJSON(jsonUrlProvincias, function(data){
      $.each(data, function(i,obj){
        var option = $('<option />');
        option.attr('value', obj.ubigeo_id).text(obj.name);
        $('#provincia').append(option);
      })
    });
    $('.provincia').show();
  });

  $('#provincia').change(function(e){
    e.preventDefault;
    var optionSelected = $("option:selected", this);
    var provincia= this.value;
    var jsonUrlDistritos = "http://0.0.0.0:3000/ubigeos/ubigeos/distritos/"+provincia+".json"
    $.getJSON(jsonUrlDistritos, function(data){
      $.each(data, function(i,obj){
        var option = $('<option />');
        option.attr('value', obj.ubigeo_id).text(obj.name);
        $('#distrito').append(option);
      });
    });
    $('.distrito').show();
  });
  $('#distrito').change(function(e){
    e.preventDefault;
    var optionSelected = $("option:selected", this);
    var distrito= this.value;
  });
  //:name, :lastName, :ubigeo_id, :birthDate, :genre, :email, :phone, :mobile, :alias, :balance
  $("form").submit(function(e) {
      e.preventDefault();
      var user={}
      user.name = "Gordon"
      user.lastName = "Smith"
      user.ubigeo_id = 1
      user.birthDate = "2015-09-15"
      user.genre = 0
      user.email = "vasquez.alf"
      user.phone = "5661896"
      user.mobile = "9994695369"
      user.alias = "gordons"
      user.balance = 0
      var userjson = JSON.stringify(user);
      console.log(userjson)
      $.post(
        '/users',
        userjson, 
        function( data, textStatus, j0xhr ) {
          alert( "Data Loaded: " + data);
        },
        'json')
      .fail(function(jqXhr, textStatus, errorThrown){
          console.log(errorThrown);
      });
      
      

      var pwd = $("#password").val()
  });
});