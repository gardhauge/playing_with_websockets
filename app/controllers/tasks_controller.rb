class TaskController < WebsocketRails::BaseController
  def websocket_test
    # The `message` method contains the data received
    task = true
    p 'reached the controller'
    if task
      send_message :success, :namespace => :tasks
    else
      send_message :fail, :namespace => :tasks
    end
  end
end
