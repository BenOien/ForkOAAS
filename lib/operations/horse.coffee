module.exports =
  name: "Fork you and the horse you rode in on"
  url: '/horse/:from'
  fields: [
    { name: 'From', field: 'from'}
  ]

  register: (app, output) ->
    app.get '/horse/:from', (req, res) ->
      message = "Fork you and the horse you rode in on."
      subtitle = "- #{req.params.from}"
      output(req, res, message, subtitle)
