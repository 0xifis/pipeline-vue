const { environment } = require('@rails/webpacker')
const webpack = require('webpack')
const vue =  require('./loaders/vue')

environment.plugins.prepend('Provide', new webpack.ProvidePlugin({
  Rails: 'rails-ujs',
}))
environment.loaders.append('vue', vue)
module.exports = environment
