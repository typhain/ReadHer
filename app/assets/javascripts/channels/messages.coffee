App.messages = App.cable.subscriptions.create "MessagesChannel",
  connected: ->
    $(document).on 'keypress', "#message", (event) =>
      if event.KeyCode is 13
        @speak(event.target.value)
        event.target.value = ""
        event.preventdefault()

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $('#messages').append(data.message)

  speak: (message) ->
    @perform 'speak', {message: message}
