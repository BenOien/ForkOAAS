module.exports =
  name: "Fork Me"
  url: '/me/:from'
  fields: [{ name: 'From', field: 'from'}]

  register: (app, output) ->
    app.get '/me/:from', (req, res) ->
      message = "Fork me."
      subtitle = "- #{req.params.from}"
      output(req, res, message, subtitle)