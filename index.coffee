
express = require 'express'
app = module.exports = express()

_     = require 'underscore'
scraper = require './src/scraper'
db = require './src/database'

Champion = require './Champion'
championNames = require './lib/championNames'
console.log championNames




ahri = {}
new Champion(scraper('Ahri'), ->
  ahri = this
  this.save()
)

_.each championNames, (name) ->
  model = new Champion(scraper(name), ->
    this.save()
  )
