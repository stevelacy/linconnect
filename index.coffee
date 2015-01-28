express = require 'express'
bodyParser = require 'body-parser'

app = express()
app.use bodyParser()
app.listen 9090

app.post '/notif', (req, res) ->
  console.log req.body
  res.end()
  header = String new Buffer req.headers.notifheader, 'base64'
  description = String new Buffer req.headers.notifdescription, 'base64'
  console.log header, description
