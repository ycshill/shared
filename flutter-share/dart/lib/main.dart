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

  print(a + b); // 21
  print(a - b); // -1
  print(a * b); // 110
  print(b / a); // 1.1
  print(b ~/ a); // 1
  print(b % a); // 1
}
