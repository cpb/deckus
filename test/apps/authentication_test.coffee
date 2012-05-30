assert  = require 'assert'
request = require 'request'
app     = require '../../server'

describe "authentication", ->
  [body, response, err] = [null, null, null]

  describe "GET /", ->
    before (done) ->
      params = uri: "http://localhost:3000"

      request params, (_err, _response, _body) ->
        err      = _err
        response = _response
        body     = _body
        done()

    it "says hello", ->
      assert.ok /Welcome/.test(body)
