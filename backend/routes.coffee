express = require 'express'
mw = require './middleware'

module.exports = routes = express.createServer()

routes.use mw.allowCrossDomain
routes.use require './routes/static'
routes.use require './routes/api'
