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

  Person mengfei = new Man('mengfei', 30);
  print(mengfei.age);
}


// 类的继承
class Person {
  String name;
  int age;

  Person(this.name, this.age);
  Person.born(){
    name = 'lily';
    age = 26;
  }
}

// 通过extends 关键字继承，然后使用:super(参数是父类的构造函数)
class Man extends Person {
  Man(String name, int age):super(name, age);
}
