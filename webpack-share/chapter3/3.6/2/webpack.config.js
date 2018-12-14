const path = require('path');

module.exports = {
  entry: './mian.tsx',
  output: {
    filename: 'bundle.js',
    path: path.resolve(__dirname, './dist'),
  },
  resolve: {
    extensions: ['.ts', '.tsx', '.js'],
  },
  module: {
    rules: [
      {
        test: /\.tsx?$/,
        loader: 'awesome-typescript-loader',

      }
    ]
  },
  devtool: 'source-map',
}
