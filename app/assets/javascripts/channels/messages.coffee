App.messages = App.cable.subscriptions.create "MessagesChannel",
  connected: ->
    $(document).on 'keypress', "btn-send", (event) =>
      if event.KeyCode is 13
        @speak(event.target.value)
        event.target.value = ""
        event.preventdefault()

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $('btn-send').append(data.message)

  speak: (message) ->
    @perform 'speak', {message: message}
