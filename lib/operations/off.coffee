module.exports =
  name: "Fork Off"
  url: '/off/:name/:from'
  fields: [
    { name: 'Name', field: 'name'}
    { name: 'From', field: 'from'}
  ]

  register: (app, output) ->
    app.get '/off/:name/:from', (req, res) ->
      message = "Fork off, #{req.params.name}."
      subtitle = "- #{req.params.from}"
      output(req, res, message, subtitle)