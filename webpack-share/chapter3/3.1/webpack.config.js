const path = require('path');

module.exports = {
  entry: './main.js',
  output: {
    filename: 'bundle.js',
    path: path.resolve(__dirname, './dist'),
  },
  module: {
    rules: [
      {
        test: /.js$/,
        use: ['babel-loader'],
      },
    ],
  },
  devtool: 'source-map',
}
