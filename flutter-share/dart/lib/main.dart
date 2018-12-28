import 'package:flutter/material.dart';
import 'dart:async';


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


void main() async{
  runApp(MaterialApp(
    title: 'dart 的基础语法',
    home: FirstPage(),
  ));

  try {
    String result = await getAjoke();
    print(result);
  } catch(e) {
    print(e);
  }
  print('现在可以执行');
}

// 使用Future 创建一个比较费时的例子
Future<String> getAjoke() {
  return new Future<String>.delayed(new Duration(milliseconds: 2000), () {
    return 'this is a joke';
  });
}
