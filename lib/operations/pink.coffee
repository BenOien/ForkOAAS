module.exports =
  name: "Pink"
  url: '/pink/:from'
  fields: [
    { name: 'From', field: 'from'}
  ]

  register: (app, output) ->
    app.get '/pink/:from', (req, res) ->
      message = "Well, Fork me pink."
      subtitle = "- #{req.params.from}"
      output(req, res, message, subtitle)