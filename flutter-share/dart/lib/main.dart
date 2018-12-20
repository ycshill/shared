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

  // 常用的操作
  String a = 'i am a girl';
  print(a + 'i love life'); // i am a girli love life
  print(a*3); // i am a girli am a girli am a girl
  print(a[2]); // a

  int b = 10;
  int c = 10;
  print('b is $b'); // b is 10
  print('a + b = ${b + c}'); // a + b = 20

  // 常用的属性
  print(a.length); // 11
  print(a.isEmpty); // false
  print(a.isNotEmpty); // true

  // 常用的方法
  String d = 'this is a sun day';
  print(d.contains('is')); // true;
  print(d.substring(2,4)); // 掐头去尾 is
  print(d.startsWith('a')); // false
  print(d.endsWith('ay')); // true
  print(d.indexOf('is'));  // 2
  print(d.lastIndexOf('is')); // 5
  print(d.toLowerCase()); // this is a sun day
  print(d.toUpperCase()); // THIS IS A SUN DAY
  print(d.split(' ')); // [this, is, a, sun, day]
  print(d.replaceAll('s', 'w')); // thiw iw a wun day
  print(d.replaceFirst('s', 'w')); // thiw is a sun day
  print(d.replaceRange(0, 5, 'r')); // ris a sun day
  String e = '   this is a sun day   ';
  print(e.trim()); // this is a sun day
  print(e.trimLeft());
  print(e.trimRight()); //    this is a sun day
}
