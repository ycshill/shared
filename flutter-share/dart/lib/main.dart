import 'package:flutter/material.dart';


class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dart 的基础语法练习'),
      ),
      body: Center(
        child: Text('1212'),
      ),
    );
  }
}


void main() {
  runApp(MaterialApp(
    title: 'dart 的基础语法',
    home: FirstPage(),
  ));

  Point dot = new Point(2, 4);
  print(dot.sum); // 6
}

class Point {
  final num x;
  final num y;

  final num sum;

  // 可以在构造函数主体运行之前初始化实例变量，初始值设定项用逗号分开
  // 这个挺好的，能够通过其他的变量来初始化其他的变量
  Point(x, y)
    : x = x,
      y = y,
      sum = x + y;

}
