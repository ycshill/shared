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

  Person p = new Person.born();
  print(p.name); // lily 这样的好处感觉在定义的时候不用初始化，在内部已经写好了，不错
  Person p1 = new Person.middle();
  print(p1.age); // 16

  Man man1 = new Man.small('honhong');
  print(man1.age);

  Man man2 = new Man.born();
  print('${man2.name}, ${man2.age}'); // man 0
}

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  Person.born(){
    name = 'baby';
    age = 0;
  }

  Person.middle() {
    name = 'junior';
    age = 16;
  }

}

// 实现继承，实现继承，在里面不用定义变量，父类命名的构造函数不会被子类继承，要使用:调用
class Man extends Person {
  Man(String name, int age):super(name, age);

  // 调用自身的构造函数，自身又调用父类的构造函数
  Man.small(String name):this(name, 0);

  Man.old(String name):this(name, 45);

  Man.born():super.born(){
    name= 'man';
  }
}
