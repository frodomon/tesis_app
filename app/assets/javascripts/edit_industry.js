$(document).ready(function(){
  var lineas = []
  $.when(PopulateUbigeos(lineas)).done(Lineas.industrias($('#parent'),lineas[0]))
  $('#parent').change(function(e){
    e.preventDefault();
    var optionSelected = $("option:selected", this);
    var padre= this.value;
    $('#parent_id').val(padre)
  });
});
var Lineas = {
  industrias: function(selector, id){
    var jsonUrl = "http://0.0.0.0:3000/rubroOF/get/rubrosPadre.json"
    $.getJSON(jsonUrl).done (function(data){
      $.when(PopulateCallback(data,selector)).then(selectIndustry(id))
    })  
  }
}
function PopulateUbigeos(arreglo){
  var padre_id = $('#parent_id').val()
  if (padre_id=="") padre_id='0'
  arreglo.push(padre_id)
}
function PopulateCallback(data, selector){
  $.each(data, function(i,obj){
    var option = $('<option />');
    option.attr('value', obj.id).text(obj.name);
    selector.append(option);
  });
}
function selectIndustry(id){
  $('#parent option[value="'+id+'"]').prop('selected', 'selected').trigger('change')
}