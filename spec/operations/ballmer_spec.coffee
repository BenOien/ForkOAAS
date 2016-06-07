operation = require '../../lib/operations/ballmer'

describe "/ballmer", ->
  it "should have the correct name", ->
    expect(operation.name).toEqual('Ballmer')

  it "should have the correct url", ->
    expect(operation.url).toEqual('/ballmer/:name/:company/:from')

  it "should have the correct fields", ->
    expect(operation.fields).toEqual([
      { name: 'Name', field: 'name'}
      { name: 'Company', field: 'company'}
      { name: 'From', field: 'from'}
    ])

  describe 'register', ->
    it 'should call app.get with correct url', ->
      app =
        get: jasmine.createSpy()

      operation.register(app,null)

      expect(app.get).toHaveBeenCalled()
      expect(app.get.argsForCall[0][0]).toEqual('/ballmer/:name/:company/:from')

    it 'should call output with correct params', ->
      func = null
      app =
        get: (url, fn) -> func = fn
      output = jasmine.createSpy()
      operation.register(app, output)

      req = 
        params:
          name: "TESTNAME"
          from: "TESTFROM"

      message = "Forking #{req.params.name} is a forking pussy. I'm going to forking bury that guy, I have done it before, and I will do it again. I'm going to forking kill #{req.params.company}."
      subtitle = "- #{req.params.from}"

      func(req,'RES')
      expect(output).toHaveBeenCalledWith(req, 'RES', message, subtitle)