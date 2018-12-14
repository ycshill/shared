const path = require('path');
const VueLoaderPlugin = require('vue-loader/lib/plugin');

module.exports = {
   // JS 执行入口文件
   entry: './main.ts',
   output: {
     // 把所有依赖的模块合并输出到一个 bundle.js 文件
     filename: 'bundle.js',
     // 输出文件都放到 dist 目录下
     path: path.resolve(__dirname, './dist'),
   },
  resolve: {
    extensions: ['.ts', '.js', '.vue', '.json'],
  },
  module: {
    rules: [
      {
        test: /\.vue$/,
        use: ['vue-loader'],
        exclude: /node_modules/,
      },
      // 加载.ts文件
      {
        test: /\.ts$/,
        loader: 'ts-loader',
        exclude: /node_modules/,
        options: {
          appendTsSuffixTo: [/\.vue$/],
        }
      }
    ]
  },
  plugins: [
    new VueLoaderPlugin()
  ],
}
