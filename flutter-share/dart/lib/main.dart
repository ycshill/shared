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

  var a;
  print(a);  // null

  a = 10;
  print(a); // 10

  a = 'Hello Dart';
  print(a);  // Hello Dart;

  //  总结 var 和js 一样,  未初始化的时候是 null，(变量)

  // 声明一个只赋值一次的变量
  final b = 20;
  print(b);  // 20;

  // 声明一个常量（编译时）
  const c = 30;
  print(c); // 30
}
