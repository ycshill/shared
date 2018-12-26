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

  Function fun = printHello;  // 作为一个参数，传递给变量
  fun(); // hello

  List hello = ['h', 'e', 'l', 'l', 'o'];
  print(ListTimes(hello, times));  // [hhh, eee, lll, lll, ooo]

}

void printHello() {
  print('hello');
}

// 返回三次该字符串
String times(str) {
  return str * 3;
}

// 根据List 返回一个新的List
List ListTimes(List list, String times(str)) {  // 作为一个函数的参数传入
  for(int i = 0; i< list.length; i++) {
    list[i] = times(list[i]);
  }

  return list;
}
