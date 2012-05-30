assert  = require 'assert'
request = require 'request'
app     = require '../../server'

describe "authentication", ->
  [body, response, err] = [null, null, null]

  describe "GET /", ->
    before (done) ->
      params = uri: "http://localhost:#{app.settings.port}"

      request params, (_err, _response, _body) ->
        err      = _err
        response = _response
        body     = _body
        done()

    it "says hello", ->
      assert.ok /Welcome/.test(body)
