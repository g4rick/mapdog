const path = require('path');

module.exports = function() {
  const production = process.env.NODE_ENV === 'production';

  return {
    devtool: production ? 'source-map' : 'eval',

    entry: './assets',

    output: {
      path: path.resolve(__dirname, './priv/static/'),
      filename: 'js/app.js'
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
}
