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

  int a = 10; // =
  print(a); // 10

  int b;
  b ??= a;
  print(b); // 10; 如果b没有值，就会读取 = 后面的值

  int c = 5;
  c ??= a;
  print(c); // 5 如果c有值，就会读取c本身的值

  print(a += b); // 20
  print(a -= b); // 10
  print(a *= b); // 100
  // print(a /= b); //  value of type 'double' can't be assigned to a variable of type 'int'
  print(a ~/= b); // 10
  print(a %= b); // 0

  double d = 11.0;
  print(d /= b); // 1.1

}
