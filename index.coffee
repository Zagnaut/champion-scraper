express = require 'express'
app = module.exports = express()

jsdom = require 'jsdom'
fs    = require 'fs'

Champion = require './Champion'

_.each championNames, (name) ->
  champ = {}

  jsdom.env(
    "http://http://leagueoflegends.wikia.com/wiki/#{name}"
    ["http://code.jquery.com/jquery.js"]
    (errors, window) ->
      champ.name = window.$()
      champ.title = window.$()
      champ.portrait = window.$()
      champ.abilities = 
        q:
          title: window.$()
          icon: window.$()
          desc: window.$()
          effects: window.$()
          stats: window.$()
            cooldown: window.$()
            range: window.$()
            cost: window.$()
              amount: window.$()
              resource: window.$()
        w:
          title: window.$()
          icon: window.$()
          desc: window.$()
          effects: window.$()
          stats: window.$()
            cooldown: window.$()
            range: window.$()
            cost: window.$()
              amount: window.$()
              resource: window.$()
        e:
          title: window.$()
          icon: window.$()
          desc: window.$()
          effects: window.$()
          stats: window.$()
            cooldown: window.$()
            range: window.$()
            cost: window.$()
              amount: window.$()
              resource: window.$()
        r:
          title: window.$()
          icon: window.$()
          desc: window.$()
          effects: window.$()
          stats: window.$()
            cooldown: window.$()
            range: window.$()
            cost: window.$()
              amount: window.$()
              resource: window.$()
        i:
          title: window.$()
          icon: window.$()
          desc: window.$()
  )

scrapeChampion = ->


pushChampion = (options) ->
  new Champion(options).save()