express = require 'express'

module.exports = routes = express.createServer()

routes.get '/', (req, res, next) ->
	res.send 'hit /api for a JSON response'
