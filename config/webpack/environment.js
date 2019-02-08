const path = require('path')
const { environment } = require('@rails/webpacker')
const VueLoaderPlugin = require('vue-loader/lib/plugin')

environment.plugins.append('VueLoaderPlugin', new VueLoaderPlugin())
environment.loaders.append('vue', {
  test: /\.vue(\.erb)?$/,
  use: [{ loader: 'vue-loader' }]
})

environment.config.merge({
  resolve: {
    alias: {
      vue: 'vue/dist/vue.common',
      '@': path.resolve(__dirname, '../../app/javascript/')
    }
  }
})

module.exports = environment
