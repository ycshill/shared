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

  print(getPerson('lily', grade: '一年级')); // name-lily,age-null,grade-一年级
  print(getPersonInfo('lily',10,)); // 使用位置可选参数:name-lily,age-10,grade-null
}

// 使用命名可选参数
String getPerson(String name, {int age, String grade}) {
  return 'name-$name,age-$age,grade-$grade';
}

// 使用位置可选参数
String getPersonInfo(String name, [int age, String grade]) {
  return '使用位置可选参数:name-$name,age-$age,grade-$grade';
}
