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

  List arr = [1, 2, 3, 4];
  for (int item in arr) {
    if (item == 2) {
      break; // 跳出按着的循环
    }
    print(item); // 1
  }
  print('----------');
  for (int item in arr) {
    if (item == 2) {
      continue;  // 跳出本次循环
    }
    print(item); // 1 3 4
  }
  print('-------');
  List inner = ['a', 'b', 'c'];
  for(int item in arr) {
    for(String i in inner) {
      print(i);
      break;  // 跳出临近的本次循环
      /**
       * flutter: a
flutter: a
flutter: a
flutter: a
       */
    }
  }
  print('-------');
  for(int item in arr) {
    for(String i in inner) {
      print(i);
      continue; // 4次 abc
    }
  }
}
