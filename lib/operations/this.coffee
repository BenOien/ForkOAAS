module.exports =
  name: "Fork This"
  url: '/this/:from'
  fields: [
    { name: 'From', field: 'from'}
  ]

  register: (app, output) ->
    app.get '/this/:from', (req, res) ->
      message = "Fork this."
      subtitle = "- #{req.params. from}"
      output(req, res, message, subtitle)