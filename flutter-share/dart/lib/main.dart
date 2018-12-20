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

  // 创建Map
  Map a = {
    'name': 'lily',
    'age': '26',
  };
  print(a); // {name: lily, age: 26}
  // 创建一个不可变的map
  Map b = const {
    'name': 'lily',
    'age': '26',
  };
  // b['name'] = 'xiaoming'; // Cannot set value in unmodifiable Map
  print(b);
  Map c = new Map();
  print(c); // {}

  // 常用的操作
  Map d = {
    'name': 'lily',
    'age': '26',
  };
  print(d['name']); // lily
  d['name'] = 'xiao';
  print(d); // {name: xiao, age: 26}
  print(d.length); // 2
  print(d.isNotEmpty); // true
  print(d.isEmpty); // false
  print(d.keys); // (name, age)
  print(d.values);  // (xiao, 26)
  print(d.containsKey('name')); // true
  print(d.containsValue(3)); // false
  d.remove('name');
  print(d); // {age: 26}
  d.forEach(getKeyValue); //key-age, value-26
}

void getKeyValue(key, value) {
  print('key-$key, value-$value');
}
