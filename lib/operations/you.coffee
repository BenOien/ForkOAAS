module.exports =
  name: "Fork You"
  url: '/you/:name/:from'
  fields: [
    { name: 'Name', field: 'name'}
    { name: 'From', field: 'from'}
  ]

  register: (app, output) ->
    app.get '/you/:name/:from', (req, res) ->
      message = "Fork you, #{req.params.name}."
      subtitle = "- #{req.params.from}"
      output(req, res, message, subtitle)