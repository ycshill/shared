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

  int a = 10;
  int b = 11;

  print(a == b); // false
  print(a != b); // true
  print(a > b); // false
  print(a < b); // true
  print(a >= b); // false
  print(a <= b); // true
  print(a++); // 10
  print(++a); // 12 上面的表达式使用a的值的时候，就++啦
  print(a--); // 12
  print(--a); // 10

  String strA = '123';
  String strB = '123';
  print(strA == strB); // true
}
