const path = require('path');

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
  devtool: 'source-map',
}
