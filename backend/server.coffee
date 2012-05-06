server = require './routes'
port = process.env.PORT or 1110

server.listen port, ->
	console.log "server running on localhost:#{port}"
