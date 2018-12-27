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

 Man xiaoming = new Man('xiaoming', 24);
 xiaoming.run(); // i am a man, i can run
}

class Person {
  String name;
  int age;

  Person(this.name, this.age);
  Person.born(){
    name = 'baby';
    age  = 0;
  }

  // 定义方法
  run() {
    print('i can run');
  }
}

class Man extends Person{
  Man(String name, int age):super(name, age);

  // 重写方法
  @override
  run() {
    print('i am a man, i can run');
  }
}
