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

  print(getPerson('lily', 26)); // name-lily,age-26
  print(printPerson('lily', 24)); // null, 如果加上void 会报错
}

String getPerson(String name, int age) {
  return 'name-$name,age-$age';
}
// 方法名和参数都可以不定义类型
// 没有返回类型的，默认返回null
printPerson(name, age) {
  print('name-$name,age-$age');
}

// 使用箭头函数
printPerson1(name, age) => 'name-$name,age-$age';
