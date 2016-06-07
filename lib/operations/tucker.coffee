module.exports =
  name: "Tucker"
  url: '/tucker/:from'
  fields: [
    { name: 'From', field: 'from'}
  ]

  register: (app, output) ->
    app.get '/tucker/:from', (req, res) ->
      message = "Come the fork in or fork the fork off."
      subtitle = "- #{req.params.from}"
      output(req, res, message, subtitle)
