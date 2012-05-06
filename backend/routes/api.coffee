express = require 'express'
fake = require 'Faker'

users = []

[0..10].forEach (num, i) ->
	users.push fake.Helpers.createCard()



module.exports = routes = express.createServer()

routes.get '/api', (req, res, next) ->
	res.send users
