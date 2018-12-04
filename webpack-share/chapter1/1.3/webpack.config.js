const path = require('path');
const MiniCssExtractPlugin = require("mini-css-extract-plugin");

module.exports = {
  // javascript 执行的入口文件
  entry: './main.js',
  output: {
    filename: 'bundle.js',
    // 输出文件到 dist 目录下
    path: path.resolve(__dirname, './dist'),
  },
  module: {
    rules: [{
      // 用正则表达式去匹配该 loader 转换的 css 文件
      test: /\.css$/,
      // 解析是从后往前的，可以通过url querystring 的方式传入参数
      // use:['style-loader', 'css-loader?minimize'],
      // use:[
      //   'style-loader',
      //   {
      //     loader: 'css-loader',
      //     options: {
      //       minimize: true,
      //     },
      //   }
      // ]
      use: [
        {
          loader: MiniCssExtractPlugin.loader,
        },
        "css-loader",
      ],
    }],
  },
  plugins: [
    new MiniCssExtractPlugin({
      // Options similar to the same options in webpackOptions.output
      // both options are optional
      filename: "[name]_[contenthash].css",
      chunkFilename: "[id].css"
    })
  ],
};
