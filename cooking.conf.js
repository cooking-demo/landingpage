const cooking = require('cooking');

cooking.set({
  use: 'vue',
  entry: {
    app: './src/main.js',
    vendor: ['vue']
  },
  template: {
    'index.html': {
      template: './src/index.tpl',
      favicon: './src/assets/favicon.ico'
    }
  },
  chunk: 'vendor',
  urlLoaderLimit: false,
  devServer: {
    port: 8802,
    publicPath: '/'
  },
  hash: true,
  publicPath: '/cooking/',
  extractCSS: true,
  extends: ['vue', 'lint', 'saladcss']
});

module.exports = cooking.resolve();
