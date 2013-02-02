express = require 'express'
app = module.exports = express()

mongoose = require 'mongoose'
Schema   = mongoose.Schema

jsdom = require 'jsdom'
fs    = require 'fs'


Champion = require './Champion'

_.each championNames, (name) ->
  jsdom.env(
    "http://http://leagueoflegends.wikia.com/wiki/#{name}"
    ["http://code.jquery.com/jquery.js"]
    (errors, window) ->
      window.$()
  )