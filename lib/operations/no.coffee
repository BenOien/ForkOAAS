module.exports =
  name: "No"
  url: '/no/:from'
  fields: [
    { name: 'From', field: 'from'}
  ]

  register: (app, output) ->
    app.get '/no/:from', (req, res) ->
      message = "No forks given."
      subtitle = "- #{req.params.from}"
      output(req, res, message, subtitle)