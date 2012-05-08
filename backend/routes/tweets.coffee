express = require 'express'
fake = require 'Faker'

getLastName = (name) ->
  parts = name.split(/\s+/)
  parts[ parts.length - 1 ]

constructJsonResponse = ->
  tweets = []
  [0..10].forEach (num, i) ->
    fullName = fake.Name.findName()
    handle = "@#{ getLastName(fullName).toLowerCase() }"

    tweet =
      user:
        handle: handle
        fullName: fullName
      message: fake.Lorem.sentence()

    tweets.push tweet

  tweets

module.exports = routes = express.createServer()

routes.get '/tweets', (req, res, next) ->
  res.send constructJsonResponse()