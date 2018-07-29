const path = require('path');
// TODO: 学习path
module.exports = {
  entry: {
    home: './assets/pages/home'
  },

  output: {
    // phx endpoint里添加了only属性 所以必须放到js里 或者修改endpoint
    path: path.join(__dirname, '../../priv/static/js/'), // absolute path required
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
    extensions: ['.js'],
    alias: {
      Components: path.resolve(__dirname, 'components/')
    }
  }
}