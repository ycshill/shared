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

  print(divide(10, 0));

}

// 异常处理
divide(int a, int b) {
  if (b == 0) {
    // 通过throw 抛出异常
    // throw new IntegerDivisionByZeroException();  // 抛出的是自带的异常
    throw new Exception('Divide by zero'); // 抛出字符串异常
  } else {
    return a / b;
  }
}
