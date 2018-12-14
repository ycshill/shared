const path = require('path');
const UglifyJsPlugin = require('uglifyjs-webpack-plugin');
const MiniCssExtractPlugin = require("mini-css-extract-plugin");
const { WebPlugin } = require('web-webpack-plugin');

module.exports = {
  mode: 'production',
  entry: {
    app: './main.js',
  },
  output: {
    filename: '[name]_[chunkhash:8].js',
    path: path.resolve(__dirname, './dist'),
  },
  module: {
    rules: [
      {
        test: /\.js$/,
        use: ['babel-loader'],
        exclude: path.resolve(__dirname, 'node_modules'),
      },
      {
        test: /\.css$/,
        use: [
          MiniCssExtractPlugin.loader,
          "css-loader",
        ]
      },
    ],
  },
  optimization: {
    minimizer: [
      new UglifyJsPlugin({
        uglifyOptions:{
          warnings: false,
          parse: {},
          compress: {},
          mangle: true, // Note `mangle.properties` is `false` by default.
          output: null,
          toplevel: false,
          nameCache: null,
          ie8: false,
          keep_fnames: false,
        }
      }),
    ],
    splitChunks: {
      cacheGroups: {
        styles: {
          name: 'styles',
          test: /\.css$/,
          chunks: 'all',
          enforce: true
        }
      }
    }
  },
  plugins: [
    new WebPlugin({
      template: './index.html',
      filename: 'index.html',
    }),
    new MiniCssExtractPlugin({
      filename: "[name]_[chunkhash:8].css",
    }),
  ],
};
