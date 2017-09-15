request = require 'request'

request('https://httpbin.org/get', (err, res, body) ->
  if err
    console.log err
  else if res.statusCode != 200
    console.log res.statusCode
  else
    console.log body
)