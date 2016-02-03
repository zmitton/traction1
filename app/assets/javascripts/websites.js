$(document).ready(function() {
  var forms = $('form.topsite');
  for( var i = 0 ; i < forms.length ; i++){
    initForm($(forms[i]));
  }
});

var initForm = function(form){
  form.submit(function( event ) {
    event.preventDefault();
    var id = this.parentNode.id.substring(6, this.parentNode.id.length);
    var url = $(this.parentNode).find('[name="url"]')[0].value;

    var replace_row = function(fetched_tr){
      console.log(fetched_tr);
      $.modal.close();
      $('#' + id).html(fetched_tr);
    }

    jQuery.ajax({
      url: 'websites/' + id,
      type: 'PUT',
      data: {'url': url},
      success: replace_row
    });
  });
}

