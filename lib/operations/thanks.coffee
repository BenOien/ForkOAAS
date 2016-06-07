module.exports =
  name: "Thanks"
  url: '/thanks/:from'
  fields: [
    { name: 'From', field: 'from'}
  ]

  register: (app, output) ->
    app.get '/thanks/:from', (req, res) ->
      message = "Fork you very much."
      subtitle = "- #{req.params.from}"
      output(req, res, message, subtitle)