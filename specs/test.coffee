mocha = require 'mocha'
chai = require 'chai'
should = chai.should
fixtures = require './fixtures'

champion = require '../Champion'
championNames = require '../lib/championsNames'

describe 'champion-scraper', ->
  describe 'scraper', ->
    it 'should access wikia page for each champion', ->

    it 'should create a new champion from a page', ->

  describe 'champion', ->
    it 'should create and save a new champion', ->
      new Champion(fixures.testChamp).save()