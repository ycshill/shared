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

  Man p1 = new Man('lily');
  p1.eat();  // i eat
}

mixin Person {
  String name;
  eat() {
    print('i eat');
  }
}

class Man with Person {
  String name;
  Man(this.name);
}
