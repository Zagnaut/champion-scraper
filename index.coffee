express = require 'express'
app = module.exports = express()

_     = require 'underscore'
jsdom = require 'jsdom'

mongoose = require 'mongoose'
mongoose.connect 'localhost', 'test'

db = mongoose.connection
db.on 'error', console.error.bind(console, 'connection error:')
db.once 'open', () ->
  console.log "Mongoose is a-go"

Champion = require './Champion'
championNames = require './lib/championNames'
console.log championNames

scrapeChampion = (name) ->
  champ = {}
  jsdom.env(
    "http://http://leagueoflegends.wikia.com/wiki/" + name
    ["http://code.jquery.com/jquery.js"]
    (errors, window) ->
      $ = window.$
      champ.name = $('#champion_info-upper td span:eq(0)')
      champ.title = $('#champion_info-upper td span:eq(1)')
      champ.portrait = $('#champion_info-upper td a img').attr('src')
      # champ.abilities = 
      #   q:
      #     title: window.$()
      #     icon: window.$()
      #     desc: window.$()
      #     effects: window.$()
      #     stats: window.$()
      #       cooldown: window.$()
      #       range: window.$()
      #       cost: window.$()
      #         amount: window.$()
      #         resource: window.$()
      #   w:
      #     title: window.$()
      #     icon: window.$()
      #     desc: window.$()
      #     effects: window.$()
      #     stats: window.$()
      #       cooldown: window.$()
      #       range: window.$()
      #       cost: window.$()
      #         amount: window.$()
      #         resource: window.$()
      #   e:
      #     title: window.$()
      #     icon: window.$()
      #     desc: window.$()
      #     effects: window.$()
      #     stats: window.$()
      #       cooldown: window.$()
      #       range: window.$()
      #       cost: window.$()
      #         amount: window.$()
      #         resource: window.$()
      #   r:
      #     title: window.$()
      #     icon: window.$()
      #     desc: window.$()
      #     effects: window.$()
      #     stats: window.$()
      #       cooldown: window.$()
      #       range: window.$()
      #       cost: window.$()
      #         amount: window.$()
      #         resource: window.$()
      #   i:
      #     title: window.$()
      #     icon: window.$()
      #     desc: window.$()
      return undefined
  )
  return champ

_.each championNames, (name) ->
  model = new Champion(scrapeChampion(name), ->
    this.save()
  )