const path = require('path');

module.exports = function() {
  const production = process.env.NODE_ENV === 'production';

  return {
    devtool: production ? 'source-map' : 'eval',

    entry: './assets/index.js',

    output: {
      path: path.resolve(__dirname, './priv/static/'),
      filename: 'app.js',
      publishPath: '/'
    },

    module: {
      rules: [
        {
          test: '/.js$/',
          exclude: '/node_modules/',
          use: {
            loader: 'babel-loader'
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
