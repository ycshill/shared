const path = require('path');

module.exports = {
  entry: './main',
  output: {
    filename: 'bundle.js',
    path: path.resolve(__dirname, './dist'),
  },
  resolve: {
    extensions: ['.ts', '.js'],
  },
  module: {
    rules: [
      {
        test: /\.ts$/,
        loader: 'awesome-typescript-loader',
      },
    ],
  },
  devtool: 'source-map',
};
