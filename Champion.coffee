championSchema = 
  name: String
  title: String
  portrait: String
  abilitites:
    q:
      title: String
      icon: String
      desc: String
      effects: String
      stats:
        cooldown: String
        range: String
        cost: 
           amount: String
           resource: String
    w:
      title: String
      icon: String
      desc: String
      effects: String
      stats:
        cooldown: String
        range: String
        cost: 
           amount: String
           resource: String
    e:
      title: String
      icon: String
      desc: String
      effects: String
      stats:
        cooldown: String
        range: String
        cost: 
           amount: String
           resource: String
    r:
      title: String
      icon: String
      desc: String
      effects: String
      stats:
        cooldown: String
        range: String
        cost: 
           amount: String
           resource: String
    i:
      title: String
      icon: String
      desc: String

exports = module.exports = mongoose.model('Champion', userSchema);
