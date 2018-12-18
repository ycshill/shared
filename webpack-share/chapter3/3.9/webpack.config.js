const path = require('path');
const { WebPlugin } = require('web-webpack-plugin');

module.exports = {
  entry: './main.js',
  output: {
    filename: 'bundel.js',
    path: path.resolve(__dirname, './dist'),
  },
  module: {
    rules: [
      {
        test: /.js$/,
        use: ['babel-loader'],
        exclude: path.resolve(__dirname, 'node_modules'),
      }
    ],
  },
  plugins: [
    new WebPlugin({
      template: './index.html',
      filename: 'index.html',
    })
  ],
  devtool: 'source-map',
}
