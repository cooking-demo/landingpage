const cooking = require('cooking')

cooking.set({
  entry: './src/main.js',
  template: {
    'index.html': {
      template: './src/index.tpl',
      favicon: './src/assets/favicon.ico'
    }
  },
  devServer: {
    port: 8802,
    publicPath: '/'
  },
  hash: true,
  publicPath: '/cooking/',
  extractCSS: true,
  extends: ['vue', 'lint', 'saladcss'],
  externals: process.env.NODE_ENV === 'production' ? { vue: 'Vue' } : {}
})

module.exports = cooking.resolve()
