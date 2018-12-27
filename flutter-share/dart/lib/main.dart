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

  offsetPoint dot = offsetPoint(1, 2, 10);
  print(dot); // offsetPoint{x=11, y=12}
  print(dot.x); // 11 ，调用get
  print(dot.y); // 12
  dot.x = 4;  // 调用set
  print(dot); // offsetPoint{x=14, y=12}
}

class offsetPoint{
  int _x;
  int _y;
  int offset;

  offsetPoint(int x, int y, int offset)
    : _x = x,
      _y = y,
      offset = offset {
        print('初始化实例变量');
      }

  // 定义一个getter
  int get x => _x + offset;
  // getter 不能有参数，连括号都要删掉
  int get y {
    return _y + offset;
  }

  // 定义setter
  void set x(int x) => _x = x;
  void set y(int y) => _y = y;

  @override
  String toString() {
    return 'offsetPoint{x=$x, y=$y}';
  }
}
