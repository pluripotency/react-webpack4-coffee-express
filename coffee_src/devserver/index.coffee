express = require 'express'
app = express()

path = require 'path'
config = require './config'

webpack = require('webpack')
webpackDevMiddleware = require('webpack-dev-middleware')
webpackHotMiddleware = require('webpack-hot-middleware')
webpackConfig = require('./webpack.config')
compiler = webpack(webpackConfig)

# Tell express to use the webpack-dev-middleware and use the webpack.config.js
# configuration file as a base.
app.use webpackDevMiddleware compiler,
   noInfo: false,
#  noInfo: true,
  publicPath: webpackConfig.output.publicPath
app.use webpackHotMiddleware compiler

app.use express.static path.resolve __dirname, '../../public'

app.listen config.port, ()-> console.log "devserver listening on port #{config.port}"
