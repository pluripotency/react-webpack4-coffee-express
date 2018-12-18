express = require 'express'

app = express()
if process.env.NODE_ENV != 'production'
  webpack = require('webpack')
  webpackDevMiddleware = require('webpack-dev-middleware')
  webpackHotMiddleware = require('webpack-hot-middleware')
  webpackConfig = require('./webpack.config')
  compiler = webpack(webpackConfig)

  # Tell express to use the webpack-dev-middleware and use the webpack.config.js
  # configuration file as a base.
  app.use webpackDevMiddleware compiler,
    # noInfo: false,
    noInfo: true,
    publicPath: webpackConfig.output.publicPath
  app.use webpackHotMiddleware compiler

# Serve the files on port 3000.
app.listen 3000, ()-> console.log 'Example app listening on port 3000!\n'
