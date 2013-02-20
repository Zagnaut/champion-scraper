module.exports = scrapeChampion = (name) ->
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
      #     icon: window.$('.skill_q img').attr('src')
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
