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

  // 创建List
  List a = [1, 3, 4, true, 'hello'];
  print(a); // [1, 3, 4, true, hello]
  List b = const [1, 2, 4];
 //  b[1] = 'eh'; // Cannot modify an unmodifiable list
  List c = new List();
  print(c); // []

  // List常用的操作
  List d = [1, true, 'hello'];
  print(d); // [1, true, hello]
  print(d[0]); // 1
  d[0] = 4;
  print(d); // [4, true, hello]
  print(d.length); // 3
  d.add('world');
  print(d); // [4, true, hello, world]
  d.insert(2, false); // 将ele插入数组的指定位置
  print(d); // [4, true, false, hello, world]
  d.remove('hello');
  print(d); // [4, true, false, world]
  d.removeLast(); // 删除最后一个
  print(d); // [4, true, false]
  d.removeAt(1); // 删除指定位置
  print(d); // [4, false]
  d.addAll([5, 6, 0]);
  print(d); // [4, false, 5, 6, 0]
  d.removeRange(0, 1);
  print(d); // [false, 5, 6, 0] 掐头去尾
  print(d.indexOf(6)); // 2
  d.addAll([5, 6, 0]);
  print(d); // [false, 5, 6, 0, 5, 6, 0]
  print(d.lastIndexOf(0)); // 6
  d.remove(false);
  print(d); // [5, 6, 0, 5, 6, 0]
  d.sort();
  print(d); // [0, 0, 5, 5, 6, 6]
  print(d.sublist(2)); // [5, 5, 6, 6]
  d.shuffle();
  print(d); // [6, 5, 0, 6, 5, 0]
  d.forEach(print);
  /**
   *
    flutter: 0
    flutter: 5
    flutter: 6
    flutter: 0
    flutter: 5
    flutter: 6
   */
  print(d.asMap()); // {0: 5, 1: 5, 2: 0, 3: 6, 4: 6, 5: 0}
}
