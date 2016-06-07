module.exports =
  name: "Single"
  url: '/single/:from'
  fields: [
    { name: 'From', field: 'from'}
  ]

  register: (app, output) ->
    app.get '/single/:from', (req, res) ->
      message = "Not a single fork was given."
      subtitle = "- #{req.params.from}"
      output(req, res, message, subtitle)