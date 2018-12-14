const path = require('path');
const UglifyJsPlugin = require('uglifyjs-webpack-plugin')

module.exports = function (env = {}, argv) {
  const minimizer = [];

  const isProduction = env['production'];

  // 在生成环境才压缩
  if (isProduction) {
    minimizer.push(
      new UglifyJsPlugin({
        uglifyOptions: {
            compress: false
        }
      })
    )
  }

  return {
    // JS 执行入口文件
    entry: './main.js',
    output: {
      // 把所有依赖的模块合并输出到一个 bundle.js 文件
      filename: 'bundle.js',
      // 输出文件都放到 dist 目录下
      path: path.resolve(__dirname, './dist'),
    },
    optimization: {
      minimizer,
    },
    // 在生成环境不输出 Source Map
    devtool: isProduction ? undefined : 'source-map',
  };
}
