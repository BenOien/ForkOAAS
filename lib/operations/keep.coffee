module.exports =
  name: "Keep"
  url: '/keep/:name/:from'
  fields: [
    { name: 'Name', field: 'name'}
    { name: 'From', field: 'from'}
  ]

  register: (app, output) ->
    app.get '/keep/:name/:from', (req, res) ->
      message = "#{req.params.name}: Fork off. And when you get there, fork off from there too. Then fork off some more. Keep forking off until you get back here. Then fork off again."
      subtitle = "- #{req.params.from}"
      output(req, res, message, subtitle)