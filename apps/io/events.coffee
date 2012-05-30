events = (app) ->

  io = require('socket.io').listen(app)

  io.sockets.on 'connection', (socket) ->
    console.log 'connected'

    socket.on 'message', (message) ->
      console.log message

module.exports = events
