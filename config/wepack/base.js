const path = require('path');

module.exports = {
  entry: {
    home: './assets/pages/home'
  },

  output: {
    path: './priv/static/',
    filename: '[name].js'
  },

  module: {
    rules: [
      {
        test: /\.js$/,
        exclude: '/node_modules/',
        use: {
          loader: 'babel-loader',
          options: {
            presets: ['react', 'env']
          }
        }
      }
    ]
  },

  resolve: {
    modules: ['node_modules', path.resolve(__dirname, 'js')],
    extensions: ['.js']
  }
}