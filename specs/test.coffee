mocha = require 'mocha'
chai = require 'chai'
should = chai.should
fixtures = require './fixtures'

jsdom = require 'jsdom'

champion = require '../Champion'
championNames = require '../lib/championsNames'

describe 'champion-scraper', ->

  describe 'champion', ->
    it 'should create and save a new champion', ->
      new Champion(fixures.testChamp).save()

  describe 'scraper', ->

    describe '#scrapeChampion', ->
      it 'should access wikia page for each champion', ->
        _.each championNames, (name) ->
          jsdom.env(
            "http://http://leagueoflegends.wikia.com/wiki/#{name}"
            ["http://code.jquery.com/jquery.js"]
            (errors, window) ->
              window.$()
          )

    describe '#pushChampion'