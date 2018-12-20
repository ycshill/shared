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

  dynamic a = 0;
  print(a); // 0
  a = 'hello';
  print(a); // hello

  List arr = new List<dynamic>();
  arr.add(1);
  arr.add('hello');
  print(arr); // [1, hello]
}
