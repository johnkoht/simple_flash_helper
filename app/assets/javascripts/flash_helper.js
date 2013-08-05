var close_btn = '<button class="close" data-dismiss="alert">&times;</button>';
var speed = 4500;

$(document).ready(function() {
  
  // Remove the flash notice on click
  $('#flash_helper > div').live('click', function(e) {
    $(this).fadeOut(function() {
      $(this).hide();
    });
  });

  // Automatically remove the div after 4.5 seconds
  $('#flash_helper > div').delay(speed).fadeOut('fast', function(){
    $(this).remove();
  });

});

// Utility methods for the flash_helper
var flash_helper = {
  
  // Dynamically create a flash notice
  create: function(message, type){
    var type = type ? "alert-" + type : "alert-success";
    var $new_message = $('<div class="alert ' + type + '">' + message + close_btn + '</div>');
    $new_message.delay(speed).fadeOut('fast', function(){
      $(this).remove();
    });
    $('#flash_helper').append($new_message)
  },

  // Clear all the flash notices
  clear: function() {
    $('#flash_helper').html('');
  },

};