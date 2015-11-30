$(document).ready(function(){
	var lineasPadre = new Metodos.lineas($('#parent'))
  $('#parent').on('change',function(e){
    e.preventDefault();
    var padre= $(this).find(':selected').val();
    if (padre == '0') $('#parent_id').val('')
    else $('#parent_id').val(padre)
  });
});
var Metodos = {
  lineas: function(selector){
    var jsonUrl = "http://0.0.0.0:3000/rubroOF/get/rubrosPadre.json"
    $.getJSON(jsonUrl).done (function(data){
    PopulateCallback(data,selector)
    })  
  }
}
function PopulateCallback(data, selector){
  $.each(data, function(i,obj){
    var option = $('<option />');
    option.attr('value', obj.id).text(obj.name);
    selector.append(option);
  });
}
