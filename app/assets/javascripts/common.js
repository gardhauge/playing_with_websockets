var ready = function() {

  var dispatcher = new WebSocketRails('localhost:3000/websocket');

  dispatcher.on_open = function(data) {
    //Connection check
    console.log('Connection has been established: ', data);
  }

  dispatcher.bind('tasks.success', function() {
    console.log('successfully created');
  });


  $( '#websocket_test_button_js' ).on('click', function() {
    console.log('successfully tested');

  $( '#alert_space_js').html("<div class='alert alert-danger'>Succesfully tested!</div>");

  });

}


$(document).ready(ready);
$(document).on('page:load', ready);
