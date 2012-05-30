routes = (app) ->

  app.get '/', (req, res) ->
    res.render "#{__dirname}/views/index",
      title: 'lunch-zone'

module.exports = routes
