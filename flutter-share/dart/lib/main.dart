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

  var point = Point(2, 2);
  print(point); // Instance of 'Point'
  point.x = 4;
  print(point.x); // 4
  print(point.y); // 2

  // 使用命名构造函数
  Point dot = new Point.intPoint();
  print(dot.x); // 1
}

// 定义类
class Point {
  num x;
  num y;
  // 构造函数
  // Point(num x, num y) {
  //   this.x = x;
  //   this.y = y;
  // }

  // 通过语法糖来，更简单的生成构造函数
  // Point(this.x, this.y);

  // 命名构造函数
  Point(this.x, this.y);
  Point.intPoint(){
    x = 1;
    y = 2;
  }
}
