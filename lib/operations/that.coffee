module.exports =
  name: "Fork That"
  url: '/that/:from'
  fields: [
    { name: 'From', field: 'from'}
  ]

  register: (app, output) ->
    app.get '/that/:from', (req, res) ->
      message = "Fork that."
      subtitle = "- #{req.params.from}"
      output(req, res, message, subtitle)