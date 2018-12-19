express = require 'express'
app = express()

path = require 'path'
config = require './config'

app.use express.static path.resolve __dirname, '../../public'
app.get '/', (req, res)-> res.sendFile path.resolve __dirname, '../../public/dist/index.html'

app.listen config.port, ()-> console.log "server listening on port #{config.port}"
