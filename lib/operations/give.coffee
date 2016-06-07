module.exports =
  name: "Give"
  url: '/give/:from'
  fields: [
    { name: 'From', field: 'from'}
  ]

  register: (app, output) ->
    app.get '/give/:from', (req, res) ->
      message = "I give zero forks."
      subtitle = "- #{req.params.from}"
      output(req, res, message, subtitle)