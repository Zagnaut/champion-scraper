
module.exports = ->
  mongoose = require 'mongoose'
  mongoose.connect 'localhost', 'test'

  db = mongoose.connection
  db.on 'error', console.error.bind(console, 'connection error:')
  db.once 'open', () ->
    console.log "Mongoose is a-go"
